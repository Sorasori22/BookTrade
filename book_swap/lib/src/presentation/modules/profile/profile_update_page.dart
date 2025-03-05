import 'package:auto_route/auto_route.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/profile/providers/profile_avatar_update_provider.dart';
import 'package:book_swap/src/features/profile/providers/profile_update_provider.widget.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/forms/app_text_form_field.dart';
import 'package:book_swap/src/presentation/widgets/typography/info_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kimapp/kimapp.dart';

import '../../../core/account/account.dart';
import '../../app/app_style.dart';
import '../../widgets/components/form_status_widget.dart';

@RoutePage()
class ProfileUpdatePage extends ConsumerWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProfileUpdateFormScope(
      builder: null,
      profileId: ref.watch(currentAccountProvider).requireValue.profile!.id,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(24).copyWith(top: AS.sidePadding),
          child: ProfileUpdateFormStatus(
            builder: (context, ref, status) {
              return AppButton(
                onPressed: () async {
                  final result = await ref.submit();
                  if (result.isSuccess && context.mounted) {
                    context.showSuccessSnackbar('Profile updated successfully');
                    context.maybePop();
                  }
                },
                label: 'SAVE',
                busy: status.isProcessing,
                borderRadius: AS.radiusXL,
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CurrentUserAvatar(size: 80),
              AS.hGap12,
              CurrentAccountSelectWidget(
                selector: (state) => state.profile?.avatar,
                builder: (context, ref, avatar) {
                  return AppButton(
                    onPressed: () {
                      context.showAppModalBottomSheet(
                        builder: (context) {
                          return SafeArea(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.photo_library),
                                  title: const Text('Choose from Gallery'),
                                  onTap: () async {
                                    final picker = ImagePicker();
                                    final image = await picker.pickImage(
                                      source: ImageSource.gallery,
                                    );
                                    if (image != null && context.mounted) {
                                      final result = await context.loadingWrapper(() async {
                                        return await ref
                                            .read(profileAvatarUpdateProvider.notifier)
                                            .call(image);
                                      });

                                      if (result.isFailure && context.mounted) {
                                        context.showSnackBar(
                                          message: result.failure!.message(),
                                          backgroundColor: context.colors.error,
                                        );
                                      }
                                      context.maybePop();
                                    }
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.camera_alt),
                                  title: const Text('Take a Photo'),
                                  onTap: () async {
                                    final picker = ImagePicker();
                                    final image = await picker.pickImage(
                                      source: ImageSource.camera,
                                    );
                                    if (image != null && context.mounted) {
                                      final result = await context.loadingWrapper(() async {
                                        return await ref
                                            .read(profileAvatarUpdateProvider.notifier)
                                            .call(image);
                                      });

                                      if (result.isFailure && context.mounted) {
                                        context.showSnackBar(
                                          message: result.failure!.message(),
                                          backgroundColor: context.colors.error,
                                        );
                                      }
                                      context.maybePop();
                                    }
                                  },
                                ),
                                if (avatar != null) ...[
                                  ListTile(
                                    leading: const Icon(Icons.delete),
                                    title: const Text('Remove Photo'),
                                    onTap: () async {
                                      final result = await context.loadingWrapper(() async {
                                        return await ref
                                            .read(profileAvatarUpdateProvider.notifier)
                                            .call(null);
                                      });

                                      if (result.isFailure && context.mounted) {
                                        context.showSnackBar(
                                          message: result.failure!.message(),
                                          backgroundColor: context.colors.error,
                                        );
                                      }

                                      context.maybePop();
                                    },
                                  ),
                                ],
                              ],
                            ),
                          );
                        },
                      );
                    },
                    label: 'Edit Profile Photo',
                    variant: AppButtonVariant.neutral,
                    borderRadius: AS.radiusXL,
                  );
                },
              ),
              AS.hGap16,
              CurrentAccountSelectWidget(
                selector: (state) => state.profile?.id,
                builder: (context, ref, currentProfileId) {
                  return Padding(
                    padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileUpdateUsernameField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Username',
                              child: AppTextFormField(
                                controller: ref.textController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Username is required';
                                  }
                                  return null;
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdateFullnameField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Full Name',
                              child: AppTextFormField(
                                controller: ref.textController,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdateBioField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Bio',
                              child: AppTextFormField(
                                controller: ref.textController,
                                maxLines: 3,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdateAgeField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Age',
                              child: AppTextFormField(
                                initialValue: ref.age?.toString(),
                                keyboardType: TextInputType.number,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdateLocationField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Location',
                              child: AppTextFormField(
                                controller: ref.textController,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdateAddressField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Address',
                              child: AppTextFormField(
                                controller: ref.textController,
                                maxLines: 2,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdatePhoneNumberField(
                          builder: (context, ref) {
                            return InfoLabel(
                              label: 'Phone Number',
                              child: AppTextFormField(
                                controller: ref.textController,
                                keyboardType: TextInputType.phone,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileUpdateFormStatus(
                          builder: (context, ref, status) {
                            return FormStatusWidget(status: status);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
