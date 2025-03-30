import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:forseven/features/explore/presentation/explore_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  int navBarIndex = 0;

  Widget getView() {
    Widget? navBarWidget;
    switch (navBarIndex) {
      case 0: {navBarWidget = ExploreScreen();}
        break;
      case 1:
        {
          navBarWidget = Container();
        }
        break;
      case 2: {navBarWidget = Container();}
        break;
    }
    return navBarWidget!;
  }

  onTapNavbar({required int index}) {
    setState(() {
      navBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navBarIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => onTapNavbar(index: index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                CupertinoIcons.compass_fill,
            ),
            activeIcon: Icon(
              CupertinoIcons.compass_fill,
              color: ForsevenTheme.darkBlue,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.tray_fill,
              ),
              activeIcon: Icon(
                CupertinoIcons.tray_fill,
                color: ForsevenTheme.darkBlue,
              ),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.calendar,
              ),
              activeIcon: Icon(
                CupertinoIcons.calendar,
                color: ForsevenTheme.darkBlue,
              ),
            label: ''
          ),
        ],
      ),
      body: getView(),
    );
  }
}
