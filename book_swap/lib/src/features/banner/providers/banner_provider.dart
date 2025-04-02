import 'package:book_swap/src/features/banner/banner_schema.schema.dart';
import 'package:book_swap/src/features/banner/i_banner_repo.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_provider.g.dart';

@riverpod
class Banner extends _$Banner {
  @override
  FutureOr<BannerModel?> build() async {
    final repo = ref.watch(bannerRepoProvider);
    return await repo.findOne().getOrThrow();
  }

  void updateState(BannerModel? newState) {
    state = AsyncData(newState);
  }
}
