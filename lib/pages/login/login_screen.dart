// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:test_app/pages/login/widgets/header.dart';
import 'package:test_app/pages/login/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepOrangeAccent,
      body: Stack(
        children: [
          const Header(),
          const LoginForm(),
        ],
      ),
    );
  }
}
