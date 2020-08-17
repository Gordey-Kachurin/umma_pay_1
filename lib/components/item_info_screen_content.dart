import 'package:flutter/material.dart';

class ItemInfoScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Container(
          width: 362,
          margin: EdgeInsets.only(bottom: 8),
          child: Text(
            'Обязательны ли 5 намазовs?',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff3D3D3D),
                fontWeight: FontWeight.w600,
                fontSize: 20,
                height: 24 / 20),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Image.asset(
            'images/img_hands.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
        child: Container(
          child: Text(
            'Автор: Шамиль Аляутдинов',
            style: TextStyle(
                color: Color.fromRGBO(60, 60, 67, 0.45),
                fontWeight: FontWeight.w400,
                fontSize: 11,
                height: 13 / 11),
          ),
        ),
      )
    ]);
  }
}
