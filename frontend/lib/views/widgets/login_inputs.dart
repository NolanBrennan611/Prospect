import 'package:flutter/material.dart';

class LoginInputs extends StatefulWidget {
  const LoginInputs({super.key});

  @override
  State<LoginInputs> createState() => _LoginInputsState();
}

class _LoginInputsState extends State<LoginInputs> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: const Text(
            'Email',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white24,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: const Text(
            'Password',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: passwordController,
          obscureText: true,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white24,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
        ),
      ],
    );
  }
}