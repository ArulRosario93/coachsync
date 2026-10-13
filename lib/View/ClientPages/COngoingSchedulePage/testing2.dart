import 'package:flutter/material.dart';

class Testing2 extends StatelessWidget {
  final List<DateTime> datetime;
  final int val;
  const Testing2({super.key, required this.datetime, required this.val});

  @override
  Widget build(BuildContext context) {

    final prevprevDate = val >= 2 ? datetime[val - 2].day : " ";
    final prevDate = val >= 1 ? datetime[val - 1].day : " ";
    final date = datetime[val].day;
    final nextDate = val + 1 < datetime.length
        ? datetime[val + 1].day
        : " ";
    final nextnextDate = val + 2 < datetime.length
        ? datetime[val + 2].day
        : " ";

    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          child: Text(prevprevDate.toString(), style: TextStyle(color: Colors.white),),
        ),
        Container(
          width: 30,
          height: 30, 
          alignment: Alignment.center,
          child: Text(prevDate.toString(), style: TextStyle(color: Colors.white,)),
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          child: Text(date.toString(), style: TextStyle(color: Colors.white, fontSize: 18),),
        ),
        Container(
          width: 30,
          height: 30, 
          alignment: Alignment.center,
          child: Text(nextDate.toString(), style: TextStyle(color: Colors.white,)),
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          child: Text(nextnextDate.toString(), style: TextStyle(color: Colors.white),),
        ),
        
      ],
    );
  }
}
