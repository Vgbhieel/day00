import 'package:flutter/material.dart';

class CalculatorResult extends StatelessWidget {
  final String value;

  const CalculatorResult({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: TextAlign.end,
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}
