import 'package:book_swap/gen/assets.gen.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/auth/auth.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key, this.onBack});

  final VoidCallback? onBack;

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  // Step 1: Enter email
  // Step 2: Enter verification code
  // Step 3: Enter new password
  // Step 4: Success
  int _currentStep = 1;
  bool _isLoading = false;
  String? _email;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutCubic,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _codeController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: widget.onBack,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                  tag: 'book_swap_logo',
                  child: Assets.images.logo.image(height: 120),
                ),
              ),
              const SizedBox(height: 40),
              FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: Text(
                    _getStepTitle(),
                    style: context.theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: Text(
                    _getStepDescription(),
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              _buildCurrentStep(),
              const SizedBox(height: 32),
              FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: AppButton(
                    onPressed: _isLoading ? null : _handleStepAction,
                    label: _getButtonLabel(),
                    borderRadius: AS.radiusXL,
                    fullWidth: true,
                    busy: _isLoading,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getStepTitle() {
    switch (_currentStep) {
      case 1:
        return 'Forgot Password';
      case 2:
        return 'Verification Code';
      case 3:
        return 'Reset Password';
      case 4:
        return 'Success!';
      default:
        return '';
    }
  }

  String _getStepDescription() {
    switch (_currentStep) {
      case 1:
        return 'Enter your email to receive a verification code';
      case 2:
        return 'Enter the verification code sent to your email';
      case 3:
        return 'Create a new password for your account';
      case 4:
        return 'Your password has been reset successfully';
      default:
        return '';
    }
  }

  String _getButtonLabel() {
    switch (_currentStep) {
      case 1:
        return 'Send Code';
      case 2:
        return 'Verify Code';
      case 3:
        return 'Reset Password';
      case 4:
        return 'Back to Login';
      default:
        return '';
    }
  }

  Widget _buildCurrentStep() {
    switch (_currentStep) {
      case 1:
        return _buildEmailStep();
      case 2:
        return _buildVerificationStep();
      case 3:
        return _buildPasswordStep();
      case 4:
        return _buildSuccessStep();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildEmailStep() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'commons.email'.tr(),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }

  Widget _buildVerificationStep() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _codeController,
              decoration: InputDecoration(
                labelText: 'commons.verification_code'.tr(),
                border: OutlineInputBorder(),
                hintText: 'commons.enter_code_hint'.tr(),
              ),
              keyboardType: TextInputType.number,
              maxLength: 4,
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: _isLoading ? null : _resendCode,
              child: Text('commons.resend_code'.tr()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordStep() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Column(
          children: [
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'commons.new_password'.tr(),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'commons.confirm_password'.tr(),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuccessStep() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 80,
              ),
              const SizedBox(height: 16),
              Text(
                'auth.password_reset_success'.tr(),
                textAlign: TextAlign.center,
                style: context.theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleStepAction() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      switch (_currentStep) {
        case 1:
          await _sendVerificationCode();
          break;
        case 2:
          await _verifyCode();
          break;
        case 3:
          await _resetPassword();
          break;
        case 4:
          _goToLogin();
          break;
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _sendVerificationCode() async {
    final email = _emailController.text.trim();
    if (email.isEmpty) {
      BotToast.showText(text: 'Please enter your email');
      return;
    }

    // Validate email format
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) {
      BotToast.showText(text: 'Please enter a valid email address');
      return;
    }

    _email = email;
    final param = ForgotPasswordParam(email: email);
    final result = await ref.read(forgotPasswordProvider.notifier).call(param);

    if (result.isSuccess) {
      if (mounted) {
        setState(() {
          _currentStep = 2;
        });
        BotToast.showText(text: 'Verification code sent to your email');
      }
    } else {
      BotToast.showText(
        text: result.failure?.message() ?? 'Failed to send verification code. Please try again.',
      );
    }
  }

  Future<void> _verifyCode() async {
    final code = _codeController.text.trim();
    if (code.isEmpty) {
      BotToast.showText(text: 'Please enter the verification code');
      return;
    }

    if (code.length != 4) {
      BotToast.showText(text: 'Verification code must be 4 digits');
      return;
    }

    final param = VerifyResetCodeParam(email: _email!, code: code);
    final result = await ref.read(verifyResetCodeProvider.notifier).call(param);

    if (result.isSuccess) {
      if (mounted) {
        setState(() {
          _currentStep = 3;
        });
      }
    } else {
      BotToast.showText(text: 'Invalid verification code. Please try again.');
    }
  }

  Future<void> _resetPassword() async {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password.isEmpty) {
      BotToast.showText(text: 'Please enter a new password');
      return;
    }

    if (password.length < 6) {
      BotToast.showText(text: 'Password must be at least 6 characters long');
      return;
    }

    if (password != confirmPassword) {
      BotToast.showText(text: 'Passwords do not match');
      return;
    }

    final param = ResetPasswordParam(email: _email!, password: password);
    final result = await ref.read(resetPasswordProvider.notifier).call(param);

    if (result.isSuccess) {
      if (mounted) {
        setState(() {
          _currentStep = 4;
        });
      }
    } else {
      BotToast.showText(text: 'Failed to reset password. Please try again.');
    }
  }

  void _goToLogin() {
    if (widget.onBack != null) {
      widget.onBack!();
    }
  }

  Future<void> _resendCode() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final param = ForgotPasswordParam(email: _email!);
      final result = await ref.read(forgotPasswordProvider.notifier).call(param);

      if (result.isSuccess) {
        BotToast.showText(text: 'Verification code resent to your email');
      } else {
        BotToast.showText(text: 'Failed to resend verification code. Please try again.');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
