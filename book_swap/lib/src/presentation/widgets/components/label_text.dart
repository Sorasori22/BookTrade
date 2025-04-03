import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.label, required this.text, this.textStyle});

  final String label;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: '$label: ',
            style: TextStyle(
              color: context.textTheme.bodyMedium!.color!.withValues(alpha: 0.8),
            ),
          ),
          TextSpan(
            text: text,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
            ).merge(textStyle),
          ),
        ],
      ),
    );
  }
}
