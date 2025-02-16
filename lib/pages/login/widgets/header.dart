import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
