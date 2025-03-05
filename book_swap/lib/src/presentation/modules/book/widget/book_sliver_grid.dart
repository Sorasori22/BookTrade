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

import '../../../app/app_style.dart';
import '../../../router/app_router.gr.dart';

class BookSliverGrid extends ConsumerWidget {
  const BookSliverGrid({
    super.key,
    required this.param,
  });

  final BookListParam param;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(
      bookListPaginationProvider(page: 0, param: param).select((value) => value.isLoading),
    );

    return Skeletonizer.sliver(
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
    );
  }
}

class BookItemCard extends ConsumerWidget {
  const BookItemCard({super.key, required this.book});

  final BookModel? book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: BouncingWidget(
        isEnabled: book != null,
        child: GestureDetector(
          onTap: () {
            if (book == null) return;
            context.pushRoute(BookDetailRoute(bookIdString: book!.id.toString()));
          },
          child: SizedBox(
            width: 110,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookCover(cover: book?.image),
                AS.hGap4,
                Text(
                  book?.title ?? 'Loading title...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
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
