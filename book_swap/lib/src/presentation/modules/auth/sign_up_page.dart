import 'package:auto_route/auto_route.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/helpers/autoverpod_helper.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/auth/providers/sign_up_provider.widget.dart';
import 'package:book_swap/src/presentation/widgets/feedback/my_error_widget.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';
import '../../router/app_router.gr.dart';
import '../../widgets/buttons/app_button.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key, this.onSuccess, this.onBack});

  final VoidCallback? onSuccess;
  final VoidCallback? onBack;

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  int _currentStep = 0;
  final int _totalSteps = 3;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _ageController = TextEditingController();

  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _nextStep(SignUpProxyWidgetRef ref) async {
    if (_currentStep == 0) {
      if (_emailController.text.isEmpty) {
        BotToast.showText(text: 'Email is required');
        return;
      } else {
        // Validate email format
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        if (!emailRegex.hasMatch(_emailController.text)) {
          BotToast.showText(text: 'Please enter a valid email address');
          return;
        }
      }
    }

    if (_currentStep == 1) {
      if (_passwordController.text.length < 6) {
        BotToast.showText(text: 'Password must be at least 6 characters long');
        return;
      }
    }

    final isLastStep = _currentStep == 1;
    if (isLastStep) {
      ref.notifier.extractNameFromEmail();
    }

    if (_currentStep < _totalSteps - 1) {
      setState(() {
        _currentStep++;
      });
      _pageController.animateToPage(
        _currentStep,
        duration: AS.animationMedium,
        curve: Curves.easeInOut,
      );
    } else {
      final result = await ref.notifier.call();
      if (result.hasValue) {
        if (widget.onSuccess != null) {
          widget.onSuccess!();
        } else {
          if (mounted) {
            context.replaceRoute(SplashRoute());
          }
        }
      }
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
      _pageController.animateToPage(
        _currentStep,
        duration: AS.animationMedium,
        curve: Curves.easeInOut,
      );
    } else {
      if (widget.onBack != null) {
        widget.onBack!();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SignUpFormScope(
      builder: (context, ref, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('Sign Up'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: _previousStep,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildEmailStep(),
                    _buildPasswordStep(),
                    _buildAgeStep(),
                  ],
                ),
              ),
              SignUpFormStatus(
                builder: (context, ref, status) {
                  if (!status.isError) return const SizedBox.shrink();

                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MyErrorWidget(error: status.failure),
                  );
                },
              ),
              _buildStepIndicator(),
              SignUpFormStatus(
                builder: (context, ref, status) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppButton(
                      onPressed: () => _nextStep(ref),
                      label: _currentStep == _totalSteps - 1 ? 'Finish' : 'Next',
                      borderRadius: AS.radiusXL,
                      fullWidth: true,
                      busy: status?.isLoading ?? false,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildStepIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: AS.sidePadding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${_currentStep + 1} of $_totalSteps',
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AS.hGap20,
          LinearProgressIndicator(
            value: (_currentStep + 1) / _totalSteps,
            minHeight: 8,
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
            backgroundColor: context.bookTheme.dividerColor,
          ),
        ],
      ),
    );
  }

  Widget _buildEmailStep() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your email?",
            style: context.theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SignUpEmailField(
            textController: _emailController,
            builder: (context, ref) {
              return TextField(
                controller: ref.textController,
                maxLines: 5,
                style: context.theme.textTheme.titleLarge,
                decoration: InputDecoration(
                  hintText: 'Email address',
                  hintStyle: TextStyle(
                    color: context.theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                onSubmitted: (_) => _nextStep(ref),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordStep() {
    return SignUpPasswordField(
      textController: _passwordController,
      builder: (context, ref) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create a password',
                style: context.theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: ref.textController,
                style: context.theme.textTheme.titleLarge,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  hintStyle: TextStyle(
                    color: context.theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  suffixIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          ref.textController.clear();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colors.outline.withValues(alpha: 0.2),
                          ),
                          child: Icon(
                            Icons.clear,
                            size: 16,
                            color: context.colors.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                obscureText: !_showPassword,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) => _nextStep(ref),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(
                        _showPassword ? Icons.check_circle : Icons.circle_outlined,
                        size: 22,
                        color: context.colors.outline,
                      ),
                      const SizedBox(width: 8),
                      Text('Show password'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAgeStep() {
    return SignUpFormState(
      onStateChanged: (previous, next) {
        if (previous?.age != next?.age && next?.age != _ageController.text.toIntOrNull()) {
          _ageController.text = next?.age.toString() ?? '';
        }
      },
      builder: (context, ref, child) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hi, ${ref.select((value) => value.name)} ',
                    style: context.theme.textTheme.titleMedium,
                  ),
                  AS.wGap4,
                  InkWell(
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SignUpNameField(
                            builder: (context, ref) {
                              return AlertDialog(
                                title: const Text('Edit Name'),
                                content: TextField(
                                  controller: ref.textController,
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Enter your name',
                                  ),
                                  autofocus: true,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('Cancel'),
                                  ),
                                  AppButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    label: 'Save',
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                    child: const Icon(Icons.edit),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'How old are you?',
                style: context.theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _ageController,
                onChanged: (value) => ref.notifier.updateAge(value.toIntOrNull()),
                style: context.theme.textTheme.titleLarge,
                decoration: InputDecoration(
                  hintText: 'Age',
                  hintStyle: TextStyle(
                    color: context.theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _nextStep(ref),
              ),
            ],
          ),
        );
      },
    );
  }
}
