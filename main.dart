import 'package:flutter/material.dart';
import 'package:mp2/onboarding_screen.dart'; // Update 'your_app_name' to your actual project name

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
