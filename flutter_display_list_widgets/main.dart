import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> items = List.generate(100, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List of Widgets Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List of Widgets Example'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];

            return Card(
              child: Center(
                child: Text(item),
              ),
            );
          },
        ),
      ),
    );
  }
}
