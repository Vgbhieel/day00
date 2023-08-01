import 'package:calculator/widget/calculator_text.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculator",
        ),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            CalculatorText(value: "0"),
            SizedBox(height: 16),
            CalculatorText(value: "0"),
          ],
        ),
      ),
    );
  }
}
