import 'package:flutter/material.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Phone Number'),
          keyboardType: TextInputType.phone,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Address'),
        ),
      ],
    );
  }
}
