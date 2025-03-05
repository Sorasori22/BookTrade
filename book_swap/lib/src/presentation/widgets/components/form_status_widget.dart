import 'package:book_swap/src/presentation/widgets/feedback/my_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormStatusWidget<T> extends StatelessWidget {
  const FormStatusWidget({super.key, required this.status});

  final AsyncValue<T>? status;

  @override
  Widget build(BuildContext context) {
    return status?.whenOrNull(
          error: (error, stack) => MyErrorWidget(error: error),
        ) ??
        const SizedBox.shrink();
  }
}
