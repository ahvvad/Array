import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSocialButton("Facebook", Colors.blueAccent, () {}),
          const SizedBox(width: 20),
          _buildSocialButton("GitHub", Colors.black, () {}),
        ],
      ),
    );
  }

  Widget _buildSocialButton(String text, Color color, VoidCallback onPressed) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
