import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/helpers/date_time_helper.dart';
import 'package:book_swap/src/features/completed_swap/params/completed_swap_list_param.dart';
import 'package:book_swap/src/features/profile/profile_schema.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_utils/riverpod_pagination_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/account/current_account_provider.dart' show currentProfileIdProvider;
import '../../../../features/completed_swap/completed_swap_schema.schema.dart';
import '../../../../features/completed_swap/providers/completed_swap_list_pagination_provider.dart';

extension AsyncValueIterableProvider<T> on AsyncValue<Iterable<T>> {
  AsyncValue<int> countAsync() => whenData((value) => value.length);
}

extension ProviderListenableX<T> on ProviderListenable<AsyncValue<Iterable<T>>> {
  ProviderListenable<AsyncValue<int>> selectCountAsync() => select((value) => value.countAsync());
}

class SwapHistorySliverListWidget extends ConsumerWidget {
  const SwapHistorySliverListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileId = ref.watch(currentProfileIdProvider);
    if (profileId == null) {
      return SliverToBoxAdapter();
    }

    final param = CompletedSwapListParam(profileId: profileId);
    final firstPageCount = ref.watch(
      completedSwapListPaginationProvider(page: 0, param: param).selectCountAsync(),
    );

    if (firstPageCount.hasValue && firstPageCount.value == 0) {
      return SliverFillRemaining(
        child: Center(
          child: Text(
            'No swapped yet...',
            style: TextStyle(
              color: context.theme.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ),
      );
    }

    return RiverpodPaginationSliverList(
      loading: firstPageCount.isLoading,
      getData: (ref, index) =>
          ref.watch(completedSwapPaginatedAtIndexProvider(index, param: param)),
      loadingItemBuilder: (index, isFirstItem) {
        return Skeletonizer(
          child: ListTile(
            title: Text('Loading...'),
            subtitle: Text('Loading...'),
            leading: Skeletonizer(
              child: CircleAvatar(
                radius: 24,
              ),
            ),
          ),
        );
      },
      itemBuilder: (index, item) {
        return _Item(item: item);
      },
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item({
    super.key,
    required this.item,
  });

  final CompletedSwapModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentProfileId = ref.watch(currentProfileIdProvider)!;
    final participant = item.requester.id == currentProfileId ? item.owner : item.requester;
    final subtitleStyle = context.textTheme.bodyMedium?.copyWith(
      color: context.theme.colorScheme.onSurface.withValues(alpha: 0.6),
    );

    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: UserAvatar(imageObject: participant.avatar),
        title: Text(
          'Swapped with ${participant.displayName}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: subtitleStyle,
                children: [
                  TextSpan(text: "${item.ownerBook.title} "),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(Icons.arrow_right_alt, size: 16),
                  ),
                  TextSpan(text: "  ${item.requesterBook.title}"),
                ],
              ),
            ),
            Text(
              item.completedAt.formatForSwapHistory(),
              style: subtitleStyle?.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
