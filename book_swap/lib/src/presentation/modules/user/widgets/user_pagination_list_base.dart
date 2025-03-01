import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';

import '../../../../features/user/params/user_list_param.dart';
import '../../../../features/user/providers/user_list_pagination_provider.dart';
import '../../../../features/user/user_schema.schema.dart';
import '../../../widgets/feedback/my_error_widget.dart';

class UserPaginationListBaseConfig {
  const UserPaginationListBaseConfig();
}

final _initialParamProvider = Provider.autoDispose<UserListParam>((ref) {
  throw UnimplementedError();
});

final _configProvider = Provider.autoDispose<UserPaginationListBaseConfig>((ref) {
  throw UnimplementedError();
});

final _paramProvider = StateProvider.autoDispose<UserListParam>(
  (ref) {
    final initialParam = ref.watch(_initialParamProvider);
    return initialParam;
  },
  dependencies: [_initialParamProvider],
);

class UserPaginationListBase extends ConsumerWidget {
  const UserPaginationListBase({
    super.key,
    this.initialParam,
    this.config = const UserPaginationListBaseConfig(),
  });

  final UserListParam? initialParam;
  final UserPaginationListBaseConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        _initialParamProvider.overrideWithValue(initialParam ?? const UserListParam()),
        _configProvider.overrideWithValue(config),
      ],
      child: const _Content(),
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(_configProvider);
    final param = ref.watch(_paramProvider);
    final firstPageCount = ref.watch(
      UserListPaginationProvider(page: 0, param: param).select(
        (value) => value.whenData((value) => value.length),
      ),
    );

    if (firstPageCount.hasValue) {
      if (firstPageCount.requireValue == 0) {
        return Center(
          child: Text(
            'No data',
            textAlign: TextAlign.center,
          ),
        );
      }
    }

    if (firstPageCount.hasError) {
      return Center(
        child: MyErrorWidget(error: firstPageCount.error),
      );
    }

    final loading =
        (firstPageCount.isLoading && !firstPageCount.isRefreshing) || firstPageCount.hasError;

    return RiverpodPaginationListView(
      loading: loading,
      getData: (ref, index) => ref.watch(UserPaginatedAtIndexProvider(index, param: param)),
      loadingItemBuilder: (index, isFirstItem) {
        return const _Item(item: null);
      },
      itemBuilder: (index, data) {
        return _Item(key: ValueKey(index), item: data);
      },
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item({
    super.key,
    required this.item,
  });

  final UserModel? item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (item == null) {
      return Text('Loading...');
    }
    return Text(item!.id.toString());
  }
}
