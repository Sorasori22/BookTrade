import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/forms/actionable_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

import '../../../features/auth/providers/update_email_provider.dart';
import '../../widgets/typography/info_label_widget.dart';

class EmailUpdateDialog extends HookConsumerWidget {
  const EmailUpdateDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const EmailUpdateDialog(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newEmailCtr = useTextEditingController();
    final currentPassCtr = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final state = ref.watch(updateEmailProvider);
    return ActionableDialog(
      title: const Text('Update Email'),
      submitText: 'Update',
      onSubmit: () async {
        if (!formKey.currentState!.validate()) return;
        formKey.currentState!.save();

        final result = await ref.read(updateEmailProvider.notifier).call(
              currentPassword: currentPassCtr.text,
              newEmail: newEmailCtr.text,
            );

        if (result.isSuccess) {
          BotToast.showText(text: 'Email updated successfully');
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
            InfoLabel(
              label: 'Current Email',
              child: Text(ref.watch(currentAccountProvider).valueOrNull?.profile?.email ?? ''),
            ),
            AS.hGap16,
            TextFormField(
              decoration: InputDecoration(
                label: const Text('New Email'),
              ),
              controller: newEmailCtr,
              validator: FormBuilderValidators.required(),
            ),
            AS.hGap16,
            Divider(),
            AS.hGap16,
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Current Password'),
              ),
              controller: currentPassCtr,
              obscureText: true,
              validator: FormBuilderValidators.required(),
            ),
          ],
        ),
      ),
    );
  }
}
