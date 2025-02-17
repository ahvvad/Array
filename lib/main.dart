import 'package:flutter/material.dart';
import 'package:test_app/pages/BMI/bmi_screen.dart';
// import 'package:test_app/pages/calculator/calc_screen.dart';
// import 'package:test_app/pages/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Array',
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
