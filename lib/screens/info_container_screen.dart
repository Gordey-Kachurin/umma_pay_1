import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_nav_bar.dart';
import '../components/namaz_time_info.dart';
import '../components/info_container.dart';

class InfoContainerScreen extends StatelessWidget {
  final List<InfoContainer> infoContainerItem =
      List.generate(10, (index) => InfoContainer());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
