import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/feedback/simple_step_indicator.dart';

class SimpleStepExamplePage extends ConsumerStatefulWidget {
  const SimpleStepExamplePage({super.key});

  @override
  ConsumerState<SimpleStepExamplePage> createState() => _SimpleStepExamplePageState();
}

class _SimpleStepExamplePageState extends ConsumerState<SimpleStepExamplePage> {
  int _currentStep = 0;
  final int _totalSteps = 3;

  void _nextStep() {
    if (_currentStep < _totalSteps - 1) {
      setState(() {
        _currentStep++;
      });
    } else {
      // Handle completion
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Process completed!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Step Example'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Content area (empty in this example)
            const Expanded(
              child: Center(
                child: Text(
                  'Step content would go here',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            // Simple step indicator with next button
            SimpleStepIndicator(
              currentStep: _currentStep,
              totalSteps: _totalSteps,
              onNext: _nextStep,
            ),
          ],
        ),
      ),
    );
  }
}
