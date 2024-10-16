import 'package:flutter/material.dart';
import 'package:tiktok_clone_again/features/authentication/sign_up_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}
