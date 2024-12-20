import 'package:flutter/material.dart';
import 'package:tiktok_clone_again/constants/sizes.dart';
import 'package:tiktok_clone_again/features/authentication/sign_up_screen.dart';
import 'package:tiktok_clone_again/features/main_navigation/main_navigation_screen.dart';
import 'package:tiktok_clone_again/features/onboarding/interest_screen.dart';

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
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarTheme: const BottomAppBarTheme(
          elevation: 1,
          shadowColor: Colors.black,
          color: Colors.white,
        ),
        primaryColor: const Color(0xFFE9435A),
        useMaterial3: true,
      ),
      home: const MainNavigationScreen(),
    );
  }
}
