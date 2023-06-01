import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rounded Borders Demo',
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(200),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.check,
                size: 50,
                color: Colors.white,
              ),
              onPressed: () => print('I am clicked'),
            ),
          ),
        ),
      ),
    );
  }
}
