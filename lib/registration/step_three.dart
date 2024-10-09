import 'package:flutter/material.dart';

class StepThree extends StatelessWidget {
  const StepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Work Experience'),
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Skill Experience'),
        ),
      ],
    );
  }
}
