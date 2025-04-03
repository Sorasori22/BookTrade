import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../completed_swap_schema.schema.dart';
import '../i_completed_swap_repo.dart';
import '../params/completed_swap_list_param.dart';

part 'completed_swap_list_pagination_provider.g.dart';

const int _pageCompletedSwapLimit = 25;

@riverpod
class CompletedSwapListPagination extends _$CompletedSwapListPagination with LoggerMixin {
  @override
  FutureOr<IList<CompletedSwapModel>> build({
    required int page,
    required CompletedSwapListParam param,
  }) async {
    const limit = _pageCompletedSwapLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(completedSwapRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          _log('Loaded ${list.length} completedSwaps for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load completedSwaps: $e');
    }
  }

  void _log(String message) {
    logDebug('[CompletedSwapListPagination] $message');
  }
}

@riverpod
PaginatedItem<CompletedSwapModel>? completedSwapPaginatedAtIndex(
  Ref ref,
  int index, {
  required CompletedSwapListParam param,
}) {
  const limit = _pageCompletedSwapLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(completedSwapListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(completedSwapListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}
