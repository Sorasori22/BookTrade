import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'completed_swap_schema.schema.dart';
import 'params/completed_swap_list_param.dart';

part 'i_completed_swap_repo.g.dart';

@Riverpod(keepAlive: true)
ICompletedSwapRepo completedSwapRepo(Ref ref) => _Impl(ref);

abstract class ICompletedSwapRepo {
  Future<Either<Failure, IList<CompletedSwapModel>>> findPagination({
    required int limit,
    required int offset,
    required CompletedSwapListParam param,
  });
}

class _Impl implements ICompletedSwapRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure, IList<CompletedSwapModel>>> findPagination({
    required int limit,
    required int offset,
    required CompletedSwapListParam param,
  }) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(CompletedSwapModel.table.tableName)
          .select(CompletedSwapModel.table.selectStatement)
          .or('requester_id.eq."${param.profileId()}",owner_id.eq."${param.profileId()}"');

      return await query
          .order('id', ascending: false)
          .limit(limit)
          .range(offset, offset + limit)
          .withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => CompletedSwapModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }
}
