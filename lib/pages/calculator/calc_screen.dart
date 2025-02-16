import 'package:flutter/material.dart';
import 'widgets/calc_input_section.dart';
import 'widgets/calc_result_display.dart';
import 'widgets/calc_buttons_section.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double result = 0;

  void calculate(double res) {
    setState(() {
      result = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalcInputSection(
              num1Controller: num1Controller,
              num2Controller: num2Controller,
            ),
            CalcResultDisplay(result: result),
            CalcButtonsSection(
              onCalculate: calculate,
              num1: num1,
              num2: num2,
            ),
          ],
        ),
      ),
    );
  }
}
