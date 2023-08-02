import 'package:calculator_proj/widget/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorPad extends StatelessWidget {
  const CalculatorPad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(text: "7"),
                CalculatorButton(text: "8"),
                CalculatorButton(text: "9"),
                CalculatorButton(text: "C"),
                CalculatorButton(text: "AC"),
              ]),
        ),
        const Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(text: "4"),
                CalculatorButton(text: "5"),
                CalculatorButton(text: "6"),
                CalculatorButton(text: "+"),
                CalculatorButton(text: "-"),
              ]),
        ),
        const Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(text: "1"),
                CalculatorButton(text: "2"),
                CalculatorButton(text: "3"),
                CalculatorButton(text: "x"),
                CalculatorButton(text: "/"),
              ]),
        ),
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const CalculatorButton(text: "0"),
            const CalculatorButton(text: "."),
            const CalculatorButton(text: "00"),
            const CalculatorButton(text: "="),
            Expanded(
                child: Container(
              color: Theme.of(context).colorScheme.inversePrimary,
            ))
          ]),
        ),
      ],
    );
  }
}
