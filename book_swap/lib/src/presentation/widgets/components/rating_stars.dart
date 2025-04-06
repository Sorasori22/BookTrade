import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    required this.rating,
    this.size = 20.0,
    this.spacing = 4.0,
    this.onRatingChanged,
    this.activeColor,
    this.inactiveColor,
  });

  final double rating;
  final double size;
  final double spacing;
  final void Function(double)? onRatingChanged;
  final Color? activeColor;
  final Color? inactiveColor;

  bool get isInteractive => onRatingChanged != null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveActiveColor = activeColor ?? theme.colorScheme.primary;
    final effectiveInactiveColor = inactiveColor ?? theme.colorScheme.outline;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        final starValue = index + 1;
        final isFilled = rating >= starValue;
        final isHalfFilled = !isFilled && (rating > index && rating < starValue);

        return Padding(
          padding: EdgeInsets.only(right: index < 4 ? spacing : 0),
          child: InkWell(
            onTap: isInteractive ? () => onRatingChanged?.call(starValue.toDouble()) : null,
            customBorder: const CircleBorder(),
            child: Icon(
              isHalfFilled
                  ? Icons.star_half
                  : isFilled
                      ? Icons.star
                      : Icons.star_border,
              size: size,
              color: isFilled || isHalfFilled ? effectiveActiveColor : effectiveInactiveColor,
            ),
          ),
        );
      }),
    );
  }
}
