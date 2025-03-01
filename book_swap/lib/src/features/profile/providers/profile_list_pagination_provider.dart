import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_profile_repo.dart';
import '../params/profile_list_param.dart';
import '../profile_schema.schema.dart';

part 'profile_list_pagination_provider.g.dart';

const int _pageProfileLimit = 25;

@riverpod
class ProfileListPagination extends _$ProfileListPagination with LoggerMixin {
  @override
  FutureOr<IList<ProfileModel>> build({
    required int page,
    required ProfileListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      ProfilePaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageProfileLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(profileRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          ProfilePaginationTracker.instance.trackMultipleProfiles(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} profiles for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load profiles: $e');
    }
  }

  void _log(String message) {
    logDebug('[ProfileListPagination] $message');
  }

  void _updateItem(ProfileModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(ProfileModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(ProfileId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<ProfileModel>? profilePaginatedAtIndex(
  Ref ref,
  int index, {
  required ProfileListParam param,
}) {
  const limit = _pageProfileLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(profileListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(profileListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class ProfilePaginationTracker {
  static final ProfilePaginationTracker instance = ProfilePaginationTracker._();
  ProfilePaginationTracker._();

  final _items = <ProfileId, Set<(int page, ProfileListParam param)>>{};

  void trackProfile(ProfileId id, int page, ProfileListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleProfiles(List<ProfileId> ids, int page, ProfileListParam param) {
    for (final id in ids) {
      trackProfile(id, page, param);
    }
  }

  void untrackPage(int page, ProfileListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, ProfileListParam param)> getEntriesForProfile(ProfileId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required ProfileListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageProfileLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(profileListPaginationProvider(page: page, param: param))) {
        ref.invalidate(profileListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, ProfileModel item) {
    for (final entry in getEntriesForProfile(item.id)) {
      ref
          .read(profileListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, ProfileId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForProfile(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(profileListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <ProfileListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(profileListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, ProfileListParam param) {
    for (var page = startPage + 1;
        ref.exists(profileListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(profileListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(profileListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(profileListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(profileListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<ProfileModel> items) {
    final updatesByPage = <(int, ProfileListParam), List<ProfileModel>>{};

    for (final item in items) {
      final entries = getEntriesForProfile(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageProfileLimit / 2) {
        ref.invalidate(profileListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(profileListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class ProfilePaginationState extends _$ProfilePaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required ProfileListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(profileListPaginationProvider(page: i, param: param));
      if (pageState.isLoading) {
        isLoading = true;
      }
      if (!pageState.hasError && pageState.hasValue) {
        highestLoadedPage = i;
      }
    }

    return (
      isLoading: isLoading,
      totalPages: highestLoadedPage + 1,
      currentPage: highestLoadedPage,
    );
  }
}
