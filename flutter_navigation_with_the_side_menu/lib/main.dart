import 'package:flutter/material.dart';
import 'package:flutter_navigation_with_the_side_menu/home_page.dart';
import 'package:flutter_navigation_with_the_side_menu/profile_page.dart';
import 'package:flutter_navigation_with_the_side_menu/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
