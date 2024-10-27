import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_again/constants/gaps.dart';
import 'package:tiktok_clone_again/constants/sizes.dart';
import 'package:tiktok_clone_again/features/main_navigation/widget/nav_tab.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List screens = [
    const Center(
      child: Text("home"),
    ),
    const Center(
      child: Text("search"),
    ),
    const Center(
      child: Text("home"),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavTab(
              text: 'Home',
              isSelected: _selectedIndex == 0,
              icon: FontAwesomeIcons.house,
              onTap: () => _onTap(0),
            ),
            NavTab(
              text: 'Discover',
              isSelected: _selectedIndex == 1,
              icon: FontAwesomeIcons.magnifyingGlass,
              onTap: () => _onTap(1),
            ),
            NavTab(
              text: 'Inbox',
              isSelected: _selectedIndex == 3,
              icon: FontAwesomeIcons.message,
              onTap: () => _onTap(3),
            ),
            NavTab(
              text: 'Profile',
              isSelected: _selectedIndex == 4,
              icon: FontAwesomeIcons.user,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
