import 'package:flutter/material.dart';

class CalculatorText extends StatelessWidget {
  final String value;

  const CalculatorText({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: theme.textTheme.displayLarge,
          ),
        ),
        const SizedBox(width: 18)
      ],
    );
  }
}
