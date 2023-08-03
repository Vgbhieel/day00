import 'package:calculator_proj/calculator_pad_controller.dart';
import 'package:calculator_proj/widget/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorPad extends StatefulWidget {
  final Function(String) onExpressionTextChanged;
  final Function(String) onResultTextChanged;

  const CalculatorPad({
    super.key,
    required this.onExpressionTextChanged,
    required this.onResultTextChanged,
  });

  @override
  State<CalculatorPad> createState() => _CalculatorPadState();
}

class _CalculatorPadState extends State<CalculatorPad> {
  late CalculatorPadController controller;

  @override
  void initState() {
    super.initState();
    controller = CalculatorPadController(
        onExpressionTextChanged: widget.onExpressionTextChanged,
        onResultTextChanged: widget.onResultTextChanged);
  }

  void onButtonClicked(String text) {
    controller.evalueteButtonClick(text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  text: "7",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "8",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "9",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "C",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "AC",
                  onButtonClicked: onButtonClicked,
                ),
              ]),
        ),
        Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  text: "4",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "5",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "6",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "+",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "-",
                  onButtonClicked: onButtonClicked,
                ),
              ]),
        ),
        Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  text: "1",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "2",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "3",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "x",
                  onButtonClicked: onButtonClicked,
                ),
                CalculatorButton(
                  text: "/",
                  onButtonClicked: onButtonClicked,
                ),
              ]),
        ),
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CalculatorButton(
              text: "0",
              onButtonClicked: onButtonClicked,
            ),
            CalculatorButton(
              text: ".",
              onButtonClicked: onButtonClicked,
            ),
            CalculatorButton(
              text: "00",
              onButtonClicked: onButtonClicked,
            ),
            CalculatorButton(
              text: "=",
              onButtonClicked: onButtonClicked,
            ),
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
