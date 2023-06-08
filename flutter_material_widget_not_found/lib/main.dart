import 'package:flutter/material.dart';
import 'package:flutter_material_widget_not_found/custom_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CustomListView(),
      ),
    );
  }
}
