import 'package:flutter/material.dart';

class CalcInputSection extends StatefulWidget {
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  const CalcInputSection({
    super.key,
    required this.num1Controller,
    required this.num2Controller,
  });

  @override
  State<CalcInputSection> createState() => _CalcInputSectionState();
}

class _CalcInputSectionState extends State<CalcInputSection> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.4,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: widget.num1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Num 1',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: widget.num2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Num 2',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
