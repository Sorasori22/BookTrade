import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/helpers/provider_status_helper.dart';
import '../../../features/user/providers/user_update_provider.widget.dart';
import '../../../features/user/user_schema.schema.dart';
import '../../app/app_style.dart';
import '../../router/app_router.gr.dart';
import '../../widgets/feedback/my_error_widget.dart';

@RoutePage()
class UserUpdatePage extends ConsumerStatefulWidget {
  const UserUpdatePage({
    super.key,
    @PathParam('id') required this.userIdString,
  });

  final String userIdString;

  static Future<UserModel?> show(BuildContext context, UserId userId) async {
    return await context.pushRoute(UserUpdateRoute(userIdString: userId.toString()));
  }

  @override
  ConsumerState<UserUpdatePage> createState() => _UserUpdatePageState();
}

class _UserUpdatePageState extends ConsumerState<UserUpdatePage> {
  Future<void> _submit(BuildContext context, UserUpdateProxyWidgetRef ref) async {
    final result = await ref.submit();
    if (result.hasValue) {
      BotToast.showText(text: 'User Updated');
      if (context.mounted) {
        context.maybePop(result.value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final userId = UserId.fromValue(widget.userIdString.toInt());
    return UserUpdateFormScope(
      userId: userId,
      builder: (context, ref, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Update User'),
            actions: [
              TextButton(
                onPressed: ref.status?.isLoading == true
                    ? null
                    : () async {
                        await _submit(context, ref);
                      },
                child: Text('Update'),
              ),
              AS.wGap8,
            ],
          ),
        );
      },
      child: Column(
        children: [
          UserUpdateFormStatus(
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
