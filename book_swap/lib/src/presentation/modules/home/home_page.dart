import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'package:book_swap/src/features/book/providers/book_list_pagination_provider.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/feedback/bouncing_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/account/account.dart';
import '../../../features/ads/ads_list_provider.dart';
import '../../../features/book/providers/book_popular_list_provider.dart';
import '../../../features/book/providers/book_similar_list_provider.dart';
import '../../../features/book/providers/book_trending_list_provider.dart';
import '../../app/app_style.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(bookTrendingListProvider);
          ref.invalidate(bookPopularListProvider);
          ref.invalidate(bookSimilarListProvider);
          ref.invalidate(bookListPaginationProvider);
          ref.invalidate(adsListProvider);
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              centerTitle: false,
              floating: true,
              actions: [
                SizedBox(
                  width: 40,
                  child: CurrentUserAvatar(),
                ),
                AS.wGap16,
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: AS.sidePadding).copyWith(top: 4),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  AS.hGap16,
                  InkWell(
                    onTap: () {
                      context.navigateTo(BookRoute(children: [SearchRoute(autoFocus: true)]));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: AS.sidePadding),
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AS.radiusS),
                        color: context.bookTheme.dividerColor.withValues(alpha: 0.6),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          AS.wGap12,
                          Text(
                            'Search',
                            style: context.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            // Placeholder for trending books
            _Header(title: 'Trending Books'),
            SliverToBoxAdapter(
              child: _TrendingBookList(),
            ),
            SliverToBoxAdapter(
              child: _Ads(),
            ),
            _Header(title: 'Popular Books'),
            SliverToBoxAdapter(
              child: _PopularBookList(),
            ),
            _Header(title: 'You Might Like'),
            SliverToBoxAdapter(
              child: _YouMightLikeList(),
            ),
            _Header(title: 'Recently Added'),
            SliverToBoxAdapter(
              child: _RecentlyAddedList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AS.sidePadding).copyWith(
          bottom: 8,
          top: AS.sidePadding + 4,
        ),
        child: Text(
          title,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colors.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ),
    );
  }
}

class _BookTapHandler extends ConsumerWidget {
  const _BookTapHandler({super.key, required this.bookId, required this.child});

  final BookId bookId;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BouncingWidget(
      child: GestureDetector(
        onTap: () => context.pushRoute(BookDetailRoute(bookIdString: bookId.value.toString())),
        child: child,
      ),
    );
  }
}

class _LoadingBookCover extends ConsumerWidget {
  const _LoadingBookCover({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Skeletonizer(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AS.radiusM),
        child: Container(
          width: 100,
          height: 150,
          color: context.colors.onSurface.withValues(alpha: 0.1),
        ),
      ),
    );
  }
}

class _BaseList extends ConsumerWidget {
  const _BaseList({
    super.key,
    this.height = 150,
    required this.listAsync,
    this.itemBuilder,
    this.loadingBuilder,
  });

  final double height;
  final AsyncValue<IList<BookModel>> listAsync;
  final Widget Function(BuildContext context, BookModel value)? itemBuilder;
  final Widget Function(BuildContext context)? loadingBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: AS.sidePadding),
        separatorBuilder: (context, index) => AS.wGap16,
        itemCount: listAsync.hasValue ? listAsync.requireValue.length : 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (!listAsync.hasValue) {
            return loadingBuilder?.call(context) ?? _LoadingBookCover();
          }

          final book = listAsync.requireValue[index];
          if (itemBuilder != null) {
            return itemBuilder!(context, book);
          }
          return _BookTapHandler(
            bookId: book.id,
            child: BookCover(
              cover: book.image,
            ),
          );
        },
      ),
    );
  }
}

class _TrendingBookList extends ConsumerWidget {
  const _TrendingBookList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listAsync = ref.watch(bookTrendingListProvider);
    return _BaseList(listAsync: listAsync);
  }
}

class _Ads extends ConsumerWidget {
  const _Ads({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const colors = [
      Color(0xFFE8DDC8),
      Color(0xFFF0E68C), // Light Gold
    ];
    final adsAsync = ref.watch(adsListProvider);

    return Container(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.symmetric(horizontal: AS.sidePadding),
      child: FlutterCarousel.builder(
        options: FlutterCarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          aspectRatio: 1.5,
          height: 130,
          autoPlayInterval: const Duration(seconds: 6),
          showIndicator: false,
          enableInfiniteScroll: true,
        ),
        itemCount: adsAsync.hasValue ? adsAsync.requireValue.length : 1,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          if (!adsAsync.hasValue) {
            return Skeletonizer(
              child: Skeleton.leaf(
                child: Container(
                  color: context.colors.onSurface.withValues(alpha: 0.1),
                ),
              ),
            );
          }

          final item = adsAsync.requireValue.get(itemIndex);
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AS.radiusM),
              color: colors.getOrNull(itemIndex) ?? colors.first,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12).copyWith(bottom: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title),
                        AS.hGap8,
                        Text(
                          item.description,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colors.onSurface.withValues(alpha: 0.5),
                            fontSize: 11,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        AppButton(
                          onPressed: () {
                            launchUrl(Uri.parse(item.url));
                          },
                          label: item.buttonText,
                          size: AppButtonSize.small,
                          borderRadius: AS.radiusS,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AS.radiusS),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(item.imagePath.getUrl()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _PopularBookList extends ConsumerWidget {
  const _PopularBookList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listAsync = ref.watch(bookPopularListProvider);
    return _BaseList(listAsync: listAsync);
  }
}

// Query book by author which we own, but not our own
class _YouMightLikeList extends ConsumerWidget {
  const _YouMightLikeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listAsync = ref.watch(bookSimilarListProvider);
    return _BaseList(listAsync: listAsync);
  }
}

class _RecentlyAddedList extends ConsumerWidget {
  const _RecentlyAddedList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listAsync = ref.watch(
      bookListPaginationProvider(
        page: 0,
        param: BookListParam(
          toHideOwnerId: ref.watch(currentProfileIdProvider),
        ),
      ),
    );
    return _BaseList(listAsync: listAsync);
  }
}
