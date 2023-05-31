import 'package:flutter/material.dart';
import 'package:flutter_rounded_buttons/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppView(),
    );
  }
}

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundedButton(
          text: 'Click me!',
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 1),
              backgroundColor: Colors.green,
              content: Text(
                'The button has been clicked!',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}