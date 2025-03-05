import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/book/providers/my_book_list_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/storage/image_object.dart';
import '../book_schema.schema.dart';
import '../i_book_repo.dart';
import 'book_detail_provider.dart';
import 'book_list_pagination_provider.dart';

part 'book_update_provider.g.dart';

@formWidget
@riverpod
class BookUpdate extends _$BookUpdateWidget {
  @override
  Future<BookUpdateParam> build(BookId bookId) async {
    final result = await ref.read(bookDetailProvider(bookId).future);
    return BookUpdateParam(
      ownerId: result.ownerId, // not suppose to update
      title: result.title,
      author: result.author,
      description: result.description,
      condition: result.condition,
      image: result.image,
    );
  }

  @override
  Future<BookDetailModel> submit(
    BookUpdateParam state, {
    required XFile? image,
  }) async {
    return await uploadImageWrapper(
      image,
      (path) => ImageObject(path: path),
      callback: (newImage) async {
        final updateImage = newImage != null;
        final oldImage = state.image;
        final param = updateImage ? state.copyWith(image: newImage) : state;
        final result = await ref.read(bookRepoProvider).update(bookId, data: param);

        if (result.isRight()) {
          if (updateImage && oldImage != null) {
            try {
              oldImage.delete(client: ref.supabaseStorage);
            } catch (_) {}
          }
        }

        return result.getOrThrow();
      },
    );
  }

  @override
  void onSuccess(BookDetailModel result) {
    ref.read(myBookListProvider.notifier).updateItem(result.toBookModel());
    ref.read(bookDetailProvider(bookId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    BookPaginationTracker.instance.updatePaginatedItem(ref, result.toBookModel());
  }
}
