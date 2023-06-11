import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Snackbar Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  String buttonText = 'Show Snackbar';

  void changeButtonText() => setState(() => buttonText = 'I got changed');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(buttonText),
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'This is the text that our message will display',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                duration: Duration(seconds: 1),
                backgroundColor: Colors.orange,
                behavior: SnackBarBehavior.floating,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              ),
          ),
        ),
      ),
    );
  }
}
