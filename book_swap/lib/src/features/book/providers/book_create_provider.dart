import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/account/account.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/book/providers/my_book_list_provider.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_schema.schema.dart';
import '../i_book_repo.dart';
import 'book_list_pagination_provider.dart';

part 'book_create_provider.g.dart';

@formWidget
@riverpod
class BookCreate extends _$BookCreateWidget {
  @override
  BookCreateParam build() => BookCreateParam(
        ownerId: ProfileId.fromValue(''),
        title: '',
        author: '',
        description: null,
        image: null,
        condition: null,
      );

  @override
  Future<BookDetailModel> submit(
    BookCreateParam state, {
    required XFile? image,
  }) async {
    return await uploadImageWrapper(
      image,
      (path) => ImageObject(path: path),
      callback: (image) async {
        final param = state.copyWith(
          ownerId: ref.read(currentAccountProvider).requireValue.profile!.id,
          image: image,
        );

        return await ref.read(bookRepoProvider).create(param).getOrThrow();
      },
    );
  }

  @override
  void onSuccess(BookDetailModel result) {
    ref.read(myBookListProvider.notifier).insertItem(result.toBookModel());
    ref.invalidate(bookListPaginationProvider);
  }
}
