import 'package:flutter/material.dart';
import 'package:test_app/pages/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Array',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
