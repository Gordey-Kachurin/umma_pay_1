import 'package:flutter/material.dart';
import '../fonts/bottom_nav_bar_icon_icons.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xffD1D1D6),
              offset: Offset(0, -0.5),
              blurRadius: 54.3656)
        ],
      ),
      child: BottomNavigationBar(
        selectedFontSize: 0, // to disable jump when tapped
        //  unselectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(BottomNavBarIcon.home),
            activeIcon: Icon(Icons.home),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavBarIcon.donate),
            activeIcon: Icon(BottomNavBarIcon.donate_rounded),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavBarIcon.education),
            activeIcon: Icon(BottomNavBarIcon.education_rounded),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            title: Container(height: 0.0),
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Color(0xff3C516D),
        fixedColor: Color(0xff3C516D),
        onTap: _onItemTapped,
      ),
    );
  }
}
