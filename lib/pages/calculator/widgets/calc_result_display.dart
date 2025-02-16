import 'package:flutter/material.dart';

class CalcResultDisplay extends StatelessWidget {
  final double result;
  const CalcResultDisplay({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 20,
            color: Colors.teal,
          ),
          Text(
            'Result = ${result.isNaN ? "Error" : result.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 18),
          ),
          Container(
            width: 40,
            height: 20,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
