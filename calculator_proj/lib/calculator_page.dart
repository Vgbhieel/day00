import 'package:calculator_proj/widget/calculator.pad.dart';
import 'package:calculator_proj/widget/calculator_text.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String expressionText = "";
  String resultText = "";

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    void onExpressionTextChanged(String newText) {
      setState(() {
        expressionText = newText;
      });
    }

    void onResultTextChanged(String newText) {
      setState(() {
        resultText = newText;
      });
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculator",
        ),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 16),
            CalculatorText(value: expressionText),
            const SizedBox(height: 16),
            CalculatorText(value: resultText),
            const Spacer(),
            Expanded(
                flex: 2,
                child: CalculatorPad(
                  onExpressionTextChanged: onExpressionTextChanged,
                  onResultTextChanged: onResultTextChanged,
                ))
          ],
        ),
      ),
    );
  }
}
