import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/storage/image_object.dart';
import 'params/profile_list_param.dart';
import 'profile_schema.schema.dart';

part 'i_profile_repo.g.dart';

@Riverpod(keepAlive: true)
IProfileRepo profileRepo(Ref ref) => _Impl(ref);

abstract class IProfileRepo {
  Future<Either<Failure, IList<ProfileModel>>> findAll();

  Future<Either<Failure, ProfileDetailModel>> findOne(ProfileId id);

  Future<Either<Failure, ProfileDetailModel>> update(
    ProfileId profileId, {
    required ProfileUpdateParam data,
  });

  Future<Either<Failure, Unit>> updateAvatar(ProfileId profileId, {required ImageObject? image});

  Future<Either<Failure, Unit>> delete(ProfileId id);

  Future<Either<Failure, IList<ProfileModel>>> findPagination({
    required int limit,
    required int offset,
    required ProfileListParam param,
  });
}

class _Impl implements IProfileRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure, Unit>> delete(ProfileId id) async {
    return await errorHandler(() async {
      await _ref.supabaseClient.from(ProfileTable.table).delete().eq(ProfileTable.id, id.value);

      return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<ProfileModel>>> findAll() async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(ProfileModel.table.tableName)
          .select(ProfileModel.table.selectStatement);

      if (true) {}

      return await query.withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => ProfileModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }

  @override
  Future<Either<Failure, ProfileDetailModel>> findOne(ProfileId id) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(ProfileDetailModel.table.tableName)
          .select(ProfileDetailModel.table.selectStatement)
          .eq(ProfileTable.id, id.value);

      final result = await query.single();
      return right(ProfileDetailModel.fromJson(result));
    });
  }

  @override
  Future<Either<Failure, IList<ProfileModel>>> findPagination({
    required int limit,
    required int offset,
    required ProfileListParam param,
  }) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(ProfileModel.table.tableName)
          .select(ProfileModel.table.selectStatement);

      if (true) {}

      return await query.limit(limit).range(offset, offset + limit).withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => ProfileModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }

  @override
  Future<Either<Failure, ProfileDetailModel>> update(
    ProfileId profileId, {
    required ProfileUpdateParam data,
  }) async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .from(ProfileDetailModel.table.tableName)
          .update(data.toJson())
          .eq(ProfileTable.id, profileId.value)
          .select(ProfileDetailModel.table.selectStatement)
          .single()
          .withConverter((data) => right(ProfileDetailModel.fromJson(data)));
    });
  }

  @override
  Future<Either<Failure, Unit>> updateAvatar(
    ProfileId profileId, {
    required ImageObject? image,
  }) async {
    return await errorHandler(() async {
      await _ref.supabaseClient
          .from(ProfileDetailModel.table.tableName)
          .update({'avatar': image?.toJson()}).eq(ProfileTable.id, profileId.value);

      return right(unit);
    });
  }
}
