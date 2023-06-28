import 'package:flutter/material.dart';
import 'package:flutter_authentication_screen/widgets/authentiation_text_form_field.dart';
import 'package:flutter_authentication_screen/widgets/wave.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();
  bool register = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Wave(),
          Form(
            key: _formKey,
            child: Padding( // Wrapped column with padding widget
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 25), // Reduced height from 50 to 25
                  AuthenticationTextFormField(
                    icon: Icons.email,
                    label: 'Email',
                    textEditingController: emailController,
                  ),
                  AuthenticationTextFormField(
                    icon: Icons.vpn_key,
                    label: 'Password',
                    textEditingController: passwordController,
                  ),
                  if (register == true)
                    AuthenticationTextFormField(
                      icon: Icons.password,
                      label: 'Password Confirmation',
                      textEditingController: passwordConfirmationController,
                    ),
                  const SizedBox(height: 25), // Added SizedBox
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => {},
                    child: Text(
                      register == true ? 'Register' : 'Login',
                      style: const TextStyle(fontSize: 17.5),
                    ),
                  ),
                  const SizedBox(height: 20), // Added SizedBox
                  InkWell(
                    onTap: () => setState(() {
                      register = !register;
                      _formKey.currentState?.reset();
                    }),
                    child: Text(
                      register == true ? 'Login instead' : 'Register instead',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}