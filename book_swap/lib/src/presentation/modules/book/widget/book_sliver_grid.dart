import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'package:book_swap/src/features/book/providers/book_list_pagination_provider.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/widgets/feedback/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/account/account.dart';
import '../../../app/app_style.dart';
import '../../../router/app_router.gr.dart';

class BookCardItemConfig {
  const BookCardItemConfig({
    this.onTap,
    this.selectedBookId,
  });

  /// Optional callback to handle the tap event of the book card item.
  /// If not provided, it will navigate to the book detail page.
  final void Function(BookModel book)? onTap;

  /// Optional selected book id. if provided, it will highlight the book card item.
  final BookId? selectedBookId;
}

class _BookItemConfigProvider extends InheritedWidget {
  const _BookItemConfigProvider({
    super.key,
    required super.child,
    required this.config,
  });

  final BookCardItemConfig config;

  @override
  bool updateShouldNotify(_BookItemConfigProvider oldWidget) {
    return config != oldWidget.config;
  }

  static _BookItemConfigProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_BookItemConfigProvider>()!;
  }
}

class BookSliverGrid extends ConsumerWidget {
  const BookSliverGrid({
    super.key,
    required this.param,
    this.config,
  });

  final BookListParam param;
  final BookCardItemConfig? config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(
      bookListPaginationProvider(page: 0, param: param).select((value) => value.isLoading),
    );

    return _BookItemConfigProvider(
      config: config ?? const BookCardItemConfig(),
      child: Skeletonizer.sliver(
        enabled: loading,
        child: RiverpodPaginationSliverGrid(
          loading: loading,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          getData: (ref, index) => ref.watch(bookPaginatedAtIndexProvider(index, param: param)),
          loadingItemBuilder: (context, index) => BookItemCard(book: null),
          itemBuilder: (index, data) {
            return BookItemCard(book: data);
          },
        ),
      ),
    );
  }
}

class BookItemCard extends ConsumerWidget {
  const BookItemCard({super.key, required this.book});

  final BookModel? book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = _BookItemConfigProvider.of(context).config;
    final isSelected = config.selectedBookId == book?.id;
    final isOwner = book?.ownerId == ref.watch(currentProfileIdProvider);

    return Center(
      child: BouncingWidget(
        isEnabled: book != null,
        child: GestureDetector(
          onTap: config.onTap != null
              ? () => config.onTap!(book!)
              : () {
                  if (book == null) return;
                  context.pushRoute(BookDetailRoute(bookIdString: book!.id.toString()));
                },
          child: SizedBox(
            width: 110,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    BookCover(cover: book?.image),
                    if (isOwner)
                      Positioned(
                        top: 6,
                        right: 6,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                            color: context.colors.error.withValues(alpha: 0.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Owned',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                AS.hGap4,
                Text.rich(
                  TextSpan(
                    text: book?.title ?? 'Loading title...',
                    style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    children: [
                      if (isSelected)
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.blue,
                              size: 16,
                            ),
                          ),
                        ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  book?.author ?? 'Loading author...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colors.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
