import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/app/app_info_provider.dart';

@RoutePage()
class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key, this.onSuccess});

  final void Function()? onSuccess;

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final appInfo = ref.watch(appInfoProvider).valueOrNull;

    return Container();
  }

  Future<String?> _signInPress(WidgetRef ref) async {
    return null;

    // final param = SignInParam(email: data.name, password: data.password);
    // final result = await ref.read(signInProvider.notifier).call(param);

    // if (result.isSuccess) {
    //   if (widget.onSuccess != null) {
    //     widget.onSuccess!();
    //   } else {
    //     if (mounted) {
    //       context.replaceRoute(SplashRoute());
    //     }
    //   }

    //   return null;
    // }

    // return result.whenOrNull(failure: (failure) => failure.message());
  }
}
