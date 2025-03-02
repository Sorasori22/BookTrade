import 'package:flutter/material.dart';

import '../../app/app_style.dart';
import '../buttons/app_button.dart';
import '../theme/base_widget.dart';

/// A simple step indicator with a linear progress bar and a next button.
/// This matches the design shown in the image.
class SimpleStepIndicator extends AppBaseWidget {
  const SimpleStepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.onNext,
    this.nextLabel = 'Next',
    this.progressColor,
    this.backgroundColor,
    this.progressHeight = 4.0,
  });

  /// The current step (0-indexed)
  final int currentStep;

  /// The total number of steps
  final int totalSteps;

  /// Callback when the next button is pressed
  final VoidCallback onNext;

  /// Label for the next button
  final String nextLabel;

  /// Color for the progress indicator
  final Color? progressColor;

  /// Background color for the progress indicator
  final Color? backgroundColor;

  /// Height of the progress indicator
  final double progressHeight;

  @override
  Widget buildWithTheme(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final activeColor = progressColor ?? colors.primary;
    final inactiveColor = backgroundColor ?? colors.surfaceContainerHighest;

    // Calculate progress
    final progress = totalSteps > 0 ? (currentStep + 1) / totalSteps : 0.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Linear progress indicator
        LinearProgressIndicator(
          value: progress,
          backgroundColor: inactiveColor,
          valueColor: AlwaysStoppedAnimation<Color>(activeColor),
          minHeight: progressHeight,
        ),

        // Next button
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(
            onPressed: onNext,
            label: nextLabel,
            variant: AppButtonVariant.primary,
            borderRadius: AS.radiusXL,
            fullWidth: true,
          ),
        ),
      ],
    );
  }
}
