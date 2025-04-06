import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/i_book_rating_repo.dart';
import 'package:kimapp/extensions.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/book_rating_overall_model.dart';

part 'book_rating_overall_provider.g.dart';

@riverpod
FutureOr<BookRatingOverallModel> bookRatingOverall(Ref ref, BookId bookId) async {
  final result = await ref.watch(bookRatingRepoProvider).getOverall(bookId).getOrThrow();
  return result;
}
