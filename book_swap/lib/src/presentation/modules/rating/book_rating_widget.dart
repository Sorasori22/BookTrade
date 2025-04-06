import 'package:animate_do/animate_do.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/helpers/date_time_helper.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/model/book_rating_overall_model.dart';
import 'package:book_swap/src/features/book_rating/params/book_rating_list_param.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_delete_provider.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_list_pagination_provider.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_overall_provider.dart';
import 'package:book_swap/src/features/profile/profile_schema.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:book_swap/src/presentation/modules/rating/book_rating_create_dialog.dart';
import 'package:book_swap/src/presentation/modules/rating/book_rating_update_dialog.dart';
import 'package:book_swap/src/presentation/widgets/components/rating_stars.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/feedback/my_error_widget.dart';
import 'package:dartx/dartx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sliver_tools/sliver_tools.dart';

class BookRatingWidget extends HookConsumerWidget {
  const BookRatingWidget({
    super.key,
    required this.bookId,
  });

  final BookId bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(bookRatingOverallProvider(bookId));
    final data = dataAsync.valueOrNull;

    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'book_detail.labels.ratings_and_reviews'.tr(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              if (data?.hasMyRating == false) ...[
                InkWell(
                  onTap: () async {
                    BookRatingCreateDialog.show(context, bookId: bookId);
                  },
                  child: Text(
                    'Write a review',
                    style: TextStyle(
                      color: context.primaryColor,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
        SliverToBoxAdapter(child: AS.hGap16),
        Skeletonizer.sliver(
          enabled: data == null,
          child: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8).copyWith(left: 0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(AS.radiusM),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Skeletonizer(
                              enabled: data == null,
                              child: Text(
                                data?.average.toString() ?? '12',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            AS.hGap4,
                            Skeletonizer(
                              enabled: data == null,
                              child: RatingStars(
                                rating: data?.average ?? (dataAsync.isLoading ? 5 : 0),
                              ),
                            ),
                            AS.hGap8,
                            Skeletonizer(
                              enabled: data == null,
                              child: Text(
                                'book_detail.labels.total_reviews'
                                    .tr()
                                    .replaceAll('{}', (data?.totalRating ?? 0).toString()),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AS.wGap16,
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            for (var i = 5; i >= 1; i--)
                              Padding(
                                padding: EdgeInsets.only(bottom: i > 1 ? 4 : 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '$i',
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                    AS.wGap8,
                                    Icon(Icons.star, size: 12),
                                    AS.wGap8,
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(AS.radiusXS),
                                        child: LinearProgressIndicator(
                                          value: switch (i) {
                                            5 => data?.rating5Count.toDouble() ?? 0.6,
                                            4 => data?.rating4Count.toDouble() ?? 0.3,
                                            3 => data?.rating3Count.toDouble() ?? 0.1,
                                            2 => data?.rating2Count.toDouble() ?? 0.0,
                                            _ => data?.rating1Count.toDouble() ?? 0.0,
                                          },
                                          minHeight: 8,
                                          backgroundColor:
                                              Theme.of(context).colorScheme.outlineVariant,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (data?.hasMyRating == true) ...[
                  AS.hGap16,
                  Text(
                    'book_detail.labels.your_review'.tr(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AS.hGap12,
                  _MyReview(data: data!),
                  Divider(),
                ],
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: AS.hGap12),
        _RatingList(bookId: bookId),
      ],
    );
  }
}

class _MyReview extends ConsumerWidget {
  const _MyReview({
    super.key,
    required this.data,
  });

  final BookRatingOverallModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(currentAccountProvider).requireValue.profile;

    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CurrentUserAvatar(
            size: 38,
          ),
          AS.wGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile!.displayName,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Row(
                  children: [
                    RatingStars(rating: data.myRating?.toDouble() ?? 0, size: 16),
                    AS.wGap8,
                    Text(
                      data.createdAt?.toTimeAgo() ?? "",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                if (data.comment.isNotNullOrBlank) Text(data.comment!),
              ],
            ),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    BookratingUpdateDialog.show(context, data.myRatingId!);
                  },
                  child: Text('Edit your review'),
                ),
                if (data.myRatingId != null)
                  PopupMenuItem(
                    onTap: () async {
                      final result = await context.loadingWrapper(() async {
                        return ref.read(bookRatingDeleteProvider(data.myRatingId!).notifier).call();
                      });

                      if (result.isFailure && context.mounted) {
                        context.showErrorSnackbar(result.failure!.message());
                      }
                    },
                    child: Text('Delete'),
                  ),
              ];
            },
          ),
        ],
      ),
    );
  }
}

class _RatingList extends ConsumerWidget {
  const _RatingList({super.key, required this.bookId});

  final BookId bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(currentProfileIdProvider)!;
    final param = BookRatingListParam(bookId: bookId, myId: userId);
    final firstPageCountAsync = ref.watch(
      bookRatingListPaginationProvider(page: 0, param: param).selectCountAsync(),
    );

    if (firstPageCountAsync.hasError) {
      return SliverFillRemaining(
        child: Center(
          child: MyErrorWidget(error: firstPageCountAsync.error),
        ),
      );
    }

    return RiverpodPaginationSliverList(
      getData: (ref, index) => ref.watch(bookRatingPaginatedAtIndexProvider(index, param: param)),
      loadingItemBuilder: (index, isFirstItem) {
        return Skeletonizer(
          child: ListTile(
            leading: CircleAvatar(),
            title: Text('Loading'),
            subtitle: Text(BoneMock.subtitle),
          ),
        );
      },
      itemBuilder: (index, data) {
        return FadeIn(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    UserAvatar(
                      size: 38,
                      imageObject: data.user.avatar,
                      fallback: (data.user.displayName[0] + data.user.displayName[1]).toUpperCase(),
                    ),
                    AS.wGap12,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.user.displayName,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Row(
                            children: [
                              RatingStars(rating: data.rating.toDouble(), size: 16),
                              AS.wGap8,
                              Text(
                                data.createdAt.toTimeAgo(),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          if (data.comment.isNotNullOrBlank) ...[
                            AS.hGap8,
                            Text(
                              data.comment!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                if (index < 2) AS.hGap16,
              ],
            ),
          ),
        );
      },
    );
  }
}
