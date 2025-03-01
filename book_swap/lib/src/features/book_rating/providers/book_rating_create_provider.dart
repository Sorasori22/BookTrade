import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';
import '../book_rating_schema.schema.dart';
import '../i_book_rating_repo.dart';
import 'book_rating_list_pagination_provider.dart';
import 'book_rating_list_provider.dart';

part 'book_rating_create_provider.g.dart';

@formWidget
@riverpod
class BookRatingCreate extends _$BookRatingCreateWidget {
  @override
  BookRatingCreateParam build() => BookRatingCreateParam(
        userId: ProfileId.fromValue(''),
        bookId: BookId.fromValue(0),
        rating: 0,
        comment: '',
      );

  @override
  Future<BookRatingModel> submit(BookRatingCreateParam state) async {
    return await ref.read(bookRatingRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(BookRatingModel result) {
    ref.read(bookRatingListProvider.notifier).insertItem(result);
    ref.invalidate(bookRatingListPaginationProvider);
  }
}
