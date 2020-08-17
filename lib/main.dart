import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/bottom_nav_bar.dart';
import 'components/namaz_time_info.dart';
import 'components/info_container.dart';

void main() => runApp(MyApp());

List<InfoContainer> infoContainerItem =
    List.generate(10, (index) => InfoContainer());

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
        body: Column(
          children: [
            NamazTimeInfo(),
            Expanded(
              child: ListView.builder(
                itemCount: infoContainerItem.length,
                itemBuilder: (context, index) {
                  return InfoContainer();
                },
              ),
            ),
          ],
        ),
        appBar: UmmaAppBar(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
