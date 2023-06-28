import 'package:flutter/material.dart';
import 'package:flutter_authentication_screen/screens/authentication_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Authentication Screen',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.blueAccent,
        ),
      ),
      home: const AuthenticationScreen(),
    );
  }
}
