import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_nav_bar.dart';
import '../components/namaz_time_info.dart';
import '../components/item_info_screen_content.dart';

class ItemInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NamazTimeInfo(),
          ItemInfoScreenContent(),
        ],
      ),
      appBar: UmmaAppBar(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
