import 'package:flutter/material.dart';

class CalcButtonsSection extends StatefulWidget {
  final Function(double) onCalculate;
  final double num1, num2;

  const CalcButtonsSection({
    super.key,
    required this.onCalculate,
    required this.num1,
    required this.num2,
  });

  @override
  State<CalcButtonsSection> createState() => _CalcButtonsSectionState();
}

class _CalcButtonsSectionState extends State<CalcButtonsSection> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.4,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customButton(Icons.add, (a, b) => a + b, 1),
              customButton(Icons.remove, (a, b) => a - b, 2),
              customButton(Icons.close, (a, b) => a * b, 3),
              customButton(Icons.horizontal_rule,
                  (a, b) => b == 0 ? double.nan : a / b, 4,
                  rotate: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget customButton(
      IconData icon, double Function(double, double) operation, int buttonIndex,
      {bool rotate = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = buttonIndex;
        });
        double result = operation(widget.num1, widget.num2);
        widget.onCalculate(result);
      },
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive == buttonIndex ? Colors.green : Colors.white,
        ),
        child: rotate
            ? Transform.rotate(
                angle: 1.9, child: Icon(icon, color: Colors.black))
            : Icon(icon, color: Colors.black),
      ),
    );
  }
}
