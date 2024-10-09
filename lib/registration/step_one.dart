import 'package:flutter/material.dart';

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: "Full Name"),
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Email'),
          keyboardType: TextInputType.emailAddress,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Birth Date'),
          keyboardType: TextInputType.datetime,
        ),
      ],
    );
  }
}
