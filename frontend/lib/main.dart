import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRQspect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Mada'
      ),
      home: const SignupScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}