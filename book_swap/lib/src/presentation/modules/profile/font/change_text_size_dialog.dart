import 'package:book_swap/src/presentation/app/app_theme_provider.dart';
import 'package:dartx/dartx_io.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangeTextSizeDialog extends ConsumerWidget {
  const ChangeTextSizeDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const ChangeTextSizeDialog(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textScale = ref.watch(textScaleProvider).valueOrNull ?? TextScaleValue.normal;

    return AlertDialog(
      title: const Text('Font Size'),
      content: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: TextScaleValue.values.map((e) {
            return Card(
              child: ListTile(
                title: Text(e.name.capitalize()),
                trailing: Radio<TextScaleValue>(
                  value: e,
                  groupValue: textScale,
                  onChanged: (value) {
                    ref.read(textScaleProvider.notifier).change(value!);
                    Navigator.of(context).pop();
                  },
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
