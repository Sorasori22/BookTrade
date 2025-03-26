import 'package:book_swap/src/features/banner/banner_schema.schema.dart';
import 'package:book_swap/src/features/banner/i_banner_repo.dart';
import 'package:book_swap/src/features/banner/providers/banner_provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_update_active_provider.g.dart';

@riverpod
class BannerUpdateActiveProviderDart extends _$BannerUpdateActiveProviderDart {
  @override
  ProviderStatus<Unit> build(BannerId bannerId) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call({
    required bool isActive,
  }) async {
    return await perform(
      (state) async {
        return ref.read(bannerRepoProvider).updateActive(bannerId, isActive: isActive).getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(bannerProvider);
      },
    );
  }
}
