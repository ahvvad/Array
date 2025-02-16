import 'package:flutter/material.dart';
import 'input_fields.dart';
import 'social_buttons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 100),
            const InputFields(),
            const SizedBox(height: 40),
            const Text("Forgot Password?"),
            const SizedBox(height: 40),
            _customLoginButton(context),
            const SizedBox(height: 40),
            const Text("Don't have an account?"),
            const SizedBox(height: 40),
            const SocialButtons(),
          ],
        ),
      ),
    );
  }

  Widget _customLoginButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.deepOrangeAccent,
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
