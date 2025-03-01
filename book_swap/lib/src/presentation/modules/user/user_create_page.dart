import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/helpers/provider_status_helper.dart';
import '../../../features/user/providers/user_create_provider.widget.dart';
import '../../../features/user/user_schema.schema.dart';
import '../../app/app_style.dart';
import '../../router/app_router.gr.dart';
import '../../widgets/feedback/my_error_widget.dart';

@RoutePage()
class UserCreatePage extends ConsumerStatefulWidget {
  const UserCreatePage({super.key});

  static Future<UserModel?> show(BuildContext context) async {
    return await context.pushRoute(const UserCreateRoute());
  }

  @override
  ConsumerState<UserCreatePage> createState() => _UserCreatePageState();
}

class _UserCreatePageState extends ConsumerState<UserCreatePage> {
  Future<void> _submit(BuildContext context, UserCreateProxyWidgetRef ref) async {
    final result = await ref.submit();
    if (result.hasValue) {
      BotToast.showText(text: 'User Created');
      if (context.mounted) {
        context.maybePop(result.value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserCreateFormScope(
      builder: (context, ref, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Create User'),
            actions: [
              TextButton(
                onPressed: ref.status?.isLoading == true
                    ? null
                    : () async {
                        await _submit(context, ref);
                      },
                child: Text('Save'),
              ),
              AS.wGap8,
            ],
          ),
        );
      },
      child: Column(
        children: [
          UserCreateFormStatus(
            builder: (context, ref, status) {
              final providerStatus = status.toProviderStatus();
              return providerStatus.maybeWhen(
                inProgress: () => const LinearProgressIndicator(),
                failure: (failure) => MyErrorWidget(error: failure),
                orElse: () => SizedBox.shrink(),
              );
            },
          ),

          // Add more fields here...
        ],
      ),
    );
  }
}
