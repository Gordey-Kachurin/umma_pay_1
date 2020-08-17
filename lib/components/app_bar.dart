import 'package:flutter/material.dart';

class UmmaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UmmaAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      bottom: PreferredSize(
          child: Container(
            color: Color(0xffD1D1D6),
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0)),
      backgroundColor: Color.fromRGBO(249, 249, 249, 0.94),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo_umma 1.png',
          ),
          Image.asset(
            'images/logo_umma 2.png',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
