import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_sliver_grid.dart';
import 'package:book_swap/src/presentation/widgets/components/bottom_sheet_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookListPickerBottomSheet extends ConsumerWidget {
  const BookListPickerBottomSheet({super.key, this.selectedId});

  final BookId? selectedId;

  static Future<BookModel?> show(BuildContext context, {BookId? selectedId}) {
    return showModalBottomSheet<BookModel>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => BookListPickerBottomSheet(selectedId: selectedId),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomSheetContainer(
      title: Text('Select your offer'),
      child: CustomScrollView(
        slivers: [
          BookSliverGrid(
            config: BookCardItemConfig(
              onTap: (book) {
                context.maybePop(book);
              },
              selectedBookId: selectedId,
            ),
            param: BookListParam(
              ownerId: ref.watch(currentProfileIdProvider),
            ),
          ),
        ],
      ),
    );
  }
}
