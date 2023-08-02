import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;

  const CalculatorButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(theme.colorScheme.inversePrimary),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ))),
        onPressed: () {
          debugPrint('Button pressed: $text');
        },
        child: Text(
          text,
          style: theme.textTheme.headlineLarge,
        ),
      ),
    );
  }
}
