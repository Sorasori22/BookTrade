import 'package:auto_route/auto_route.dart';
import 'package:book_swap/gen/assets.gen.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/auth/sign_in_page.dart';
import 'package:book_swap/src/presentation/modules/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/buttons/app_button.dart';

enum _AuthType {
  getStarted,
  signUp,
  login,
}

@RoutePage()
class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key, this.onSuccess});

  final void Function()? onSuccess;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authType = useState<_AuthType>(_AuthType.getStarted);

    return Scaffold(
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.05, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            );
          },
          child: KeyedSubtree(
            key: ValueKey(authType.value),
            child: switch (authType.value) {
              _AuthType.getStarted => _GetStarted(authType: authType),
              _AuthType.signUp => SignUpPage(
                  onSuccess: onSuccess,
                  onBack: () {
                    authType.value = _AuthType.getStarted;
                  },
                ),
              _AuthType.login => SignInPage(
                  onSuccess: onSuccess,
                  onBack: () {
                    authType.value = _AuthType.getStarted;
                  },
                ),
            },
          ),
        ),
      ),
    );
  }
}

class _GetStarted extends StatelessWidget {
  const _GetStarted({
    required this.authType,
  });

  final ValueNotifier<_AuthType> authType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Hero(
            tag: 'book_swap_logo',
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.8, end: 1.0),
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutBack,
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
              child: Assets.images.logo.image(height: 180),
            ),
          ),
          const SizedBox(height: 40),
          // Welcome text
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, 20 * (1 - value)),
                  child: child,
                ),
              );
            },
            child: Text(
              'Welcome to Book Swap',
              style: context.theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.onSurface,
              ),
            ),
          ),
          SizedBox(height: 38),
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, 30 * (1 - value)),
                  child: child,
                ),
              );
            },
            child: AppButton(
              onPressed: () {
                authType.value = _AuthType.signUp;
              },
              label: 'Sign Up',
              borderRadius: AS.radiusXL,
              fullWidth: true,
            ),
          ),
          const SizedBox(height: 16),
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, 30 * (1 - value)),
                  child: child,
                ),
              );
            },
            child: AppButton(
              onPressed: () {
                authType.value = _AuthType.login;
              },
              label: 'Login',
              borderRadius: AS.radiusXL,
              fullWidth: true,
              variant: AppButtonVariant.neutral,
            ),
          ),

          const Spacer(flex: 2),
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text.rich(
                TextSpan(
                  text: 'By continuing, you agree to Book Swap\'s ',
                  style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.colors.onSurfaceVariant.withValues(alpha: 0.7),
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(text: ' and acknowledge you\'ve read our '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
