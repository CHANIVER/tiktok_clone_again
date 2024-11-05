import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_again/constants/gaps.dart';
import 'package:tiktok_clone_again/constants/sizes.dart';
import 'package:tiktok_clone_again/features/main_navigation/widget/nav_tab.dart';
import 'package:tiktok_clone_again/features/main_navigation/widget/post_video_button.dart';
import 'package:tiktok_clone_again/features/main_navigation/widget/stf_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List screens = [
    StfScreen(
      key: GlobalKey(),
    ),
    StfScreen(
      key: GlobalKey(),
    ),
    Container(),
    StfScreen(
      key: GlobalKey(),
    ),
    StfScreen(
      key: GlobalKey(),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Record video'),
          ),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex == 0 ? false : true,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex == 1 ? false : true,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex == 3 ? false : true,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex == 4 ? false : true,
            child: const StfScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavTab(
              text: 'Home',
              isSelected: _selectedIndex == 0,
              icon: FontAwesomeIcons.house,
              selectedIcon: FontAwesomeIcons.house,
              onTap: () => _onTap(0),
            ),
            NavTab(
              text: 'Discover',
              isSelected: _selectedIndex == 1,
              icon: FontAwesomeIcons.magnifyingGlass,
              selectedIcon: FontAwesomeIcons.compass,
              onTap: () => _onTap(1),
            ),
            Gaps.h16,
            GestureDetector(
              onTap: _onPostVideoButtonTap,
              child: const PostVideoButton(),
            ),
            Gaps.h16,
            NavTab(
              text: 'Inbox',
              isSelected: _selectedIndex == 3,
              icon: FontAwesomeIcons.message,
              selectedIcon: FontAwesomeIcons.solidMessage,
              onTap: () => _onTap(3),
            ),
            NavTab(
              text: 'Profile',
              isSelected: _selectedIndex == 4,
              icon: FontAwesomeIcons.user,
              selectedIcon: FontAwesomeIcons.solidUser,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
