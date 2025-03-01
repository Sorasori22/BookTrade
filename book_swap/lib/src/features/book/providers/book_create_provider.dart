import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_schema.schema.dart';
import '../i_book_repo.dart';
import 'book_list_pagination_provider.dart';
import 'book_list_provider.dart';

part 'book_create_provider.g.dart';

@formWidget
@riverpod
class BookCreate extends _$BookCreateWidget {
  @override
  BookCreateParam build() => BookCreateParam(
        ownerId: ProfileId.fromValue(''),
        title: '',
        author: '',
        isbn: '',
        description: '',
        condition: 0,
        imageUrl: '',
      );

  @override
  Future<BookModel> submit(BookCreateParam state) async {
    return await ref.read(bookRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(BookModel result) {
    ref.read(bookListProvider.notifier).insertItem(result);
    ref.invalidate(bookListPaginationProvider);
  }
}
