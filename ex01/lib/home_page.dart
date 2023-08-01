import 'package:flutter/material.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: theme.colorScheme.primaryContainer,
              child: Text(
                'A simple text',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge
                    ?.apply(color: theme.colorScheme.onPrimaryContainer),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint("Button pressed");
                },
                child: const Text("Click me"))
          ],
        ),
      ),
    );
  }
}
