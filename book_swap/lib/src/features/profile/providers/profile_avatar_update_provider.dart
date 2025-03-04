import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/profile/i_profile_repo.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/current_account_provider.dart';

part 'profile_avatar_update_provider.g.dart';

@riverpod
class ProfileAvatarUpdate extends _$ProfileAvatarUpdate {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call(XFile? image) async {
    return await perform(
      (state) async {
        return uploadImageWrapper(
          image,
          (path) => ImageObject(path: path),
          callback: (image) async {
            final profileId = ref.read(currentAccountProvider).requireValue.profile!.id;
            await ref.read(profileRepoProvider).updateAvatar(profileId, image: image).getOrThrow();

            // Delete old image from storage
            final oldImage = ref.read(currentAccountProvider).requireValue.profile!.avatar;
            if (oldImage != null) {
              try {
                oldImage.delete(client: ref.supabaseStorage);
              } catch (_) {}
            }

            ref
                .read(profileDetailProvider(profileId).notifier)
                .updateState((old) => old.copyWith(avatar: image));

            return unit;
          },
        );
      },
    );
  }
}
