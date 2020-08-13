import 'package:flutter/material.dart';

class NamazTimeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 8),
        // color: Colors.amber,
        width: 330,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                // color: Colors.blue,
                // width: 88,
                // height: 24,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Время намаза',
                        style: TextStyle(
                            fontSize: 11,
                            height: 13 / 11,
                            color: Color.fromRGBO(60, 60, 67, 0.6))))),
            Container(
                // color: Colors.green,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Timetable(
                  time: '5:24',
                  isTime: true,
                ),
                Timetable(
                  time: '5:24',
                ),
                Timetable(
                  time: '5:24',
                ),
                Timetable(
                  time: '5:24',
                ),
                Timetable(
                  time: '5:24',
                ),
                Timetable(
                  time: '5:24',
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class Timetable extends StatelessWidget {
  final String time;
  final bool isTime;
  Timetable({this.time, this.isTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isTime == true
              ? Color(0xff558B2F)
              : Color(0x00000000), // Color(0x00000000) - transparent
          borderRadius: BorderRadius.circular(3)),
      padding: EdgeInsets.only(left: 6, right: 6),
      height: 16,
      child: Center(
        child: Text(
          time,
          style: isTime == true
              ? TextStyle(fontSize: 11, height: 13 / 11, color: Colors.white)
              : TextStyle(
                  fontSize: 11,
                  height: 13 / 11,
                  color: Color.fromRGBO(60, 60, 67, 0.6)),
        ),
      ),
    );
  }
}
