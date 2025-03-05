import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'package:dartx/dartx.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/current_account_provider.dart';
import '../params/book_list_param.dart';

part 'my_book_list_provider.g.dart';

@stateWidget
@riverpod
class MyBookList extends _$MyBookList with IListAsyncNotifier {
  @override
  bool identity(BookModel item) => item.id == item.id;

  @override
  FutureOr<IList<BookModel>> build() {
    ref.cacheTime(10.minutes);
    final myId = ref.watch(currentAccountProvider).valueOrNull?.profile?.id;
    if (myId == null) {
      return const IList.empty();
    }
    return ref.watch(bookRepoProvider).findAll(BookListParam(ownerId: myId)).getOrThrow();
  }
}
