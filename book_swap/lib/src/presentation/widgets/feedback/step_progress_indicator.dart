import 'package:flutter/material.dart';

import '../../app/app_style.dart';
import '../buttons/app_button.dart';
import '../theme/base_widget.dart';

/// A widget that displays a step progress indicator with a next button.
/// This is typically used in multi-step forms or onboarding flows.
class StepProgressIndicator extends AppBaseWidget {
  const StepProgressIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.onNext,
    this.onBack,
    this.nextLabel,
    this.buttonVariant = AppButtonVariant.primary,
    this.indicatorColor,
    this.inactiveIndicatorColor,
    this.indicatorSize = 8.0,
    this.indicatorSpacing = 4.0,
    this.showLinearProgress = false,
  });

  /// The current step (0-indexed)
  final int currentStep;

  /// The total number of steps
  final int totalSteps;

  /// Callback when the next button is pressed
  final VoidCallback onNext;

  /// Optional callback when back is needed
  final VoidCallback? onBack;

  /// Optional custom label for the next button
  final String? nextLabel;

  /// Button variant for the next button
  final AppButtonVariant buttonVariant;

  /// Color for the active indicator
  final Color? indicatorColor;

  /// Color for the inactive indicators
  final Color? inactiveIndicatorColor;

  /// Size of the indicator dots
  final double indicatorSize;

  /// Spacing between indicator dots
  final double indicatorSpacing;

  /// Whether to show a linear progress indicator above the dots
  final bool showLinearProgress;

  @override
  Widget buildWithTheme(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final activeColor = indicatorColor ?? colors.primary;
    final inactiveColor = inactiveIndicatorColor ?? activeColor.withValues(alpha: 0.3);

    // Calculate progress
    final progress = totalSteps > 1 ? currentStep / (totalSteps - 1) : 1.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Linear progress indicator (optional)
        if (showLinearProgress)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: inactiveColor,
              valueColor: AlwaysStoppedAnimation<Color>(activeColor),
              minHeight: 4.0,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),

        // Dot indicators
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              totalSteps,
              (index) => Container(
                width: indicatorSize,
                height: indicatorSize,
                margin: EdgeInsets.symmetric(horizontal: indicatorSpacing),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index <= currentStep ? activeColor : inactiveColor,
                ),
              ),
            ),
          ),
        ),

        // Next button
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(
            onPressed: onNext,
            label: nextLabel ?? (currentStep == totalSteps - 1 ? 'Finish' : 'Next'),
            variant: buttonVariant,
            borderRadius: AS.radiusXL,
            fullWidth: true,
          ),
        ),
      ],
    );
  }
}
