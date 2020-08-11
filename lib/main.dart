import 'package:flutter/material.dart';

import 'components/bottom_nav_bar.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'SFUIText',
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromRGBO(249, 249, 249, 0.94),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedIconTheme:
                  IconThemeData(color: Color(0xff3C516D), size: 32),
              selectedIconTheme:
                  IconThemeData(color: Color(0xff3C516D), size: 32))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar Sample'),
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
