import 'package:flutter/material.dart';

class CalculatorText extends StatelessWidget {
  final String value;

  const CalculatorText({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          value,
          style: theme.textTheme.displayLarge,
        ),
      ),
    );
  }
}
