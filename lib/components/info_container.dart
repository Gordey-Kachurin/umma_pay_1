import 'dart:ui';

import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.blueAccent,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Color.fromRGBO(0, 0, 0, 0.08),
            )
          ],
        ),
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 17),
        width: 362,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 105,
              height: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // color: Colors.amber,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  'images/image 3.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 216,
              height: 105,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Обязательны ли 5 намазов?',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xff3D3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        height: 20 / 17),
                  ),
                  Text(
                    'В последнее время в Рунете появляются статьи о необязательности пятикратного намаза. Хотелось бы видеть статью со...',
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.75),
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        height: 12 / 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Шамиль Аляутдинов',
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color.fromRGBO(60, 60, 67, 0.45),
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            height: 12 / 10),
                      ),
                      Text(
                        '1 дек 2019',
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color.fromRGBO(60, 60, 67, 0.45),
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            height: 12 / 10),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
