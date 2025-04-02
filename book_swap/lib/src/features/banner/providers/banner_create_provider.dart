import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/banner/providers/banner_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../banner_schema.schema.dart';
import '../i_banner_repo.dart';

part 'banner_create_provider.g.dart';

@formWidget
@riverpod
class BannerCreate extends _$BannerCreateWidget {
  @override
  BannerCreateParam build() => BannerCreateParam(
        note: null,
        imagePath: ImageObject.fromJson(''),
        isActive: true,
        skippableDurationSeconds: 5,
      );

  @override
  Future<BannerModel> submit(BannerCreateParam state) async {
    return await ref.read(bannerRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(BannerModel result) {
    ref.read(bannerProvider.notifier).updateState(result);
  }
}
