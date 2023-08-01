import 'package:flutter/material.dart';

final class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final class _HomePageState extends State<HomePage> {
  String textToShow = 'A simple text';
  bool ti = true;

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
                textToShow,
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
                  debugPrint('Button pressed');
                  ti = !ti;
                  setState(() {
                    if (ti) {
                      textToShow = "A simple text";
                    } else {
                      textToShow = "Hello World!";
                    }
                  });
                },
                child: const Text('Click me'))
          ],
        ),
      ),
    );
  }
}
