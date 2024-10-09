import 'package:flutter/material.dart';
import 'step_one.dart';
import 'step_two.dart';
import 'step_three.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  int _currentStep = 0;
  final List<Widget> _steps = [
    StepOne(),
    StepTwo(),
    StepThree(),
  ];

  void _onStepContinue() {
    if (_currentStep < _steps.length - 1) {
      setState(() {
        _currentStep++;
      });
    } else {
      // Handle form submission
      print('Form submitted successfully');
    }
  }

  void _onStepCancel() {
    setState(() {
      if (_currentStep > 0) {
        _currentStep--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Registration Form'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: _onStepContinue,
        onStepCancel: _onStepCancel,
        steps: [
          Step(
            title: const Text('Step 1'),
            content: _steps[0],
            isActive: _currentStep >= 0,
          ),
          Step(
            title: const Text('Step 2'),
            content: _steps[1],
            isActive: _currentStep >= 1,
          ),
          Step(
            title: const Text('Step 3'),
            content: _steps[2],
            isActive: _currentStep >= 2,
          ),
        ],
      ),
    );
  }
}
