import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'package:dartx/dartx.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/account.dart';

part 'book_similar_list_provider.g.dart';

@riverpod
FutureOr<IList<BookModel>> bookSimilarList(Ref ref) {
  ref.watch(currentUserIdProvider);
  ref.cacheTime(5.minutes);
  ref.autoInvalidateSelf(3.minutes);
  return ref.watch(bookRepoProvider).getSimilarBooks().getOrThrow();
}
