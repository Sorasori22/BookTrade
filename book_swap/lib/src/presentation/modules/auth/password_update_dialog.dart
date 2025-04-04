import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/widgets/forms/actionable_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

import '../../../features/auth/providers/update_password_provider.dart';
import '../../app/app_style.dart';

class PasswordUpdateDialog extends HookConsumerWidget {
  const PasswordUpdateDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const PasswordUpdateDialog(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPassCtr = useTextEditingController();
    final newPassCtr = useTextEditingController();
    final confirmPassCtr = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final state = ref.watch(updatePasswordProvider);

    return ActionableDialog(
      title: const Text('Update Password'),
      submitText: 'Update',
      onSubmit: () async {
        if (!formKey.currentState!.validate()) return;
        formKey.currentState!.save();

        if (newPassCtr.text != confirmPassCtr.text) {
          BotToast.showText(text: 'New password and confirm password do not match');
          return;
        }

        final result = await ref.read(updatePasswordProvider.notifier).call(
              currentPassword: currentPassCtr.text,
              newPassword: newPassCtr.text,
              confirmPassword: confirmPassCtr.text,
            );

        if (result.isSuccess) {
          BotToast.showText(text: 'Password updated successfully');
          if (context.mounted) {
            context.maybePop();
          }
        }
      },
      failure: state.failure,
      isProgressing: state.isInProgress,
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: newPassCtr,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'New Password',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(6),
              ]),
            ),
            AS.hGap12,
            TextFormField(
              controller: confirmPassCtr,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(6),
              ]),
            ),
            AS.hGap16,
            Divider(),
            AS.hGap16,
            TextFormField(
              controller: currentPassCtr,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Current Password',
              ),
              validator: FormBuilderValidators.required(),
            ),
            AS.hGap16,
            Text(
              'Note: All your devices will be logged out, and you will need to login again after updating the password',
              style: context.theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
