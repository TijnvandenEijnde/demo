import 'package:flutter/material.dart';

class AuthenticationTextFormField extends StatelessWidget {
  const AuthenticationTextFormField({
    Key? key,
    required this.icon,
    required this.label,
    required this.textEditingController,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: label.toLowerCase().contains('password'),
      decoration: InputDecoration(
        floatingLabelStyle: const TextStyle(fontSize: 20),
        icon: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        labelText: label,
      ),
    );
  }
}