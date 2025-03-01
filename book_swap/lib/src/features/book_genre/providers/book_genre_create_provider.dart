import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_book_genre_repo.dart';
import '../book_genre_schema.schema.dart';
import 'book_genre_list_provider.dart';
import 'book_genre_list_pagination_provider.dart';

part 'book_genre_create_provider.g.dart';

@formWidget
@riverpod
class BookGenreCreate extends _$BookGenreCreateWidget {
  @override
  BookGenreCreateParam build() => const BookGenreCreateParam();

  @override
  Future<BookGenreModel> submit(BookGenreCreateParam state) async {
    return await ref.read(bookGenreRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(BookGenreModel result) {
    ref.read(bookGenreListProvider.notifier).insertItem(result);
    ref.invalidate(bookGenreListPaginationProvider);
  }
}
