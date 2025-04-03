import 'package:book_swap/src/features/ads/ads_schema.schema.dart';
import 'package:dartx/dartx_io.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ads_list_provider.g.dart';

@riverpod
FutureOr<IList<AdsModel>> adsList(Ref ref) async {
  ref.autoInvalidateSelf(3.minutes);

  return await errorHandler(() async {
    final result = await ref.supabaseClient
        .from(AdsModel.tableName)
        .select(AdsModel.table.selectStatement)
        .order('created_at', ascending: false)
        .withConverter(
          (json) => IList.fromJson(json, (json) => AdsModel.fromJson(json as Map<String, dynamic>)),
        );
    return right(result);
  }).getOrThrow();
}
