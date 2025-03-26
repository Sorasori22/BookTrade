import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'banner_schema.schema.dart';

part 'i_banner_repo.g.dart';

@Riverpod(keepAlive: true)
IBannerRepo bannerRepo(Ref ref) => _Impl(ref);

abstract class IBannerRepo {
  AsyncFailureOr<BannerModel?> findOne();

  AsyncFailureOr<BannerModel> create(BannerCreateParam data);

  AsyncFailureOr<Unit> updateActive(BannerId id, {required bool isActive});
}

class _Impl implements IBannerRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  AsyncFailureOr<BannerModel> create(BannerCreateParam data) async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .from(BannerModel.table.tableName)
          .insert(data.toJson())
          .select(BannerModel.table.selectStatement)
          .single()
          .withConverter((data) => right(BannerModel.fromJson(data)));
    });
  }

  @override
  AsyncFailureOr<BannerModel?> findOne() async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(BannerModel.table.tableName)
          .select(BannerModel.table.selectStatement)
          .eq(BannerTable.isActive, true);

      final result = await query.maybeSingle();

      if (result == null) {
        return right(null);
      }

      return right(BannerModel.fromJson(result));
    });
  }

  @override
  AsyncFailureOr<Unit> updateActive(BannerId id, {required bool isActive}) async {
    return await errorHandler(() async {
      await _ref.supabaseClient
          .from(BannerModel.table.tableName)
          .update({'is_active': isActive}).eq(BannerTable.id, id.value);
      return right(unit);
    });
  }
}
