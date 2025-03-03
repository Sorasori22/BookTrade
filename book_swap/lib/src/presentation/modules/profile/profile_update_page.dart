import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/profile/providers/profile_update_provider.widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';

@RoutePage()
class ProfileUpdatePage extends ConsumerWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          CurrentAccountSelectWidget(
            selector: (state) => state.profile?.id,
            builder: (context, ref, currentProfileId) {
              if (currentProfileId == null) {
                return const SizedBox.shrink();
              }

              return ProfileUpdateFormScope(
                profileId: currentProfileId,
                builder: (context, ref, child) {
                  return IconButton(
                    onPressed: () async {
                      final result = await ref.submit();
                      if (context.mounted) {
                        result.whenOrNull(
                          data: (_) {
                            context.showSnackBar(
                              message: 'Profile updated successfully',
                            );
                            context.pop();
                          },
                          error: (error, stack) {
                            context.showSnackBar(
                              message: error.toString(),
                              backgroundColor: context.colors.error,
                            );
                          },
                        );
                      }
                    },
                    icon: const Icon(Icons.save),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: CurrentAccountSelectWidget(
        selector: (state) => state.profile?.id,
        builder: (context, ref, currentProfileId) {
          if (currentProfileId == null) {
            return const SizedBox.shrink();
          }

          return Padding(
            padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
            child: SingleChildScrollView(
              child: ProfileUpdateFormScope(
                profileId: currentProfileId,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                builder: (context, ref, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileUpdateUsernameField(
                        builder: (context, ref) {
                          return TextFormField(
                            controller: ref.textController,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                              hintText: 'Enter your username',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Username is required';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdateFullnameField(
                        builder: (context, ref) {
                          return TextFormField(
                            controller: ref.textController,
                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Enter your full name',
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdateBioField(
                        builder: (context, ref) {
                          return TextFormField(
                            controller: ref.textController,
                            maxLines: 3,
                            decoration: const InputDecoration(
                              labelText: 'Bio',
                              hintText: 'Tell us about yourself',
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdateAgeField(
                        builder: (context, ref) {
                          return TextFormField(
                            initialValue: ref.age?.toString(),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Age',
                              hintText: 'Enter your age',
                            ),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                ref.updateAge(int.tryParse(value));
                              } else {
                                ref.updateAge(null);
                              }
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdateLocationField(
                        builder: (context, ref) {
                          return TextFormField(
                            controller: ref.textController,
                            decoration: const InputDecoration(
                              labelText: 'Location',
                              hintText: 'Enter your location',
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdateAddressField(
                        builder: (context, ref) {
                          return TextFormField(
                            controller: ref.textController,
                            maxLines: 2,
                            decoration: const InputDecoration(
                              labelText: 'Address',
                              hintText: 'Enter your address',
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdatePhoneNumberField(
                        builder: (context, ref) {
                          return TextFormField(
                            controller: ref.textController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              hintText: 'Enter your phone number',
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ProfileUpdateFormStatus(
                        builder: (context, ref, status) {
                          return status?.when(
                                data: (_) => const SizedBox.shrink(),
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                error: (error, stack) => Text(
                                  error.toString(),
                                  style: TextStyle(color: context.colors.error),
                                ),
                              ) ??
                              const SizedBox.shrink();
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
