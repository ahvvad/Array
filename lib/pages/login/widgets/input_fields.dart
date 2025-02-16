// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  const InputFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrangeAccent.shade100.withOpacity(.3),
              spreadRadius: 2,
              blurRadius: 20,
              offset: const Offset(-5, 7),
            ),
          ],
        ),
        child: const Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Email or Phone number',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
