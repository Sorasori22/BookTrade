import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class BookConditionField extends StatelessWidget {
  const BookConditionField({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final int? value;
  final void Function(int value) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      value: value,
      decoration: const InputDecoration(
        hintText: 'Select condition',
      ),
      items: [
        MapEntry(1, 'New'),
        MapEntry(2, 'Like New'),
        MapEntry(3, 'Very Good'),
        MapEntry(4, 'Good'),
        MapEntry(5, 'Acceptable'),
      ].map((entry) {
        return DropdownMenuItem<int>(
          value: entry.key,
          child: Text("${entry.key}.0 (${entry.value})"),
        );
      }).toList(),
      onChanged: (value) {
        onChanged(value ?? 5);
      },
      validator: FormBuilderValidators.required(),
    );
  }
}
