import 'package:flutter/material.dart';

class Testing2 extends StatelessWidget {
  final List schedule;
  final int val;
  const Testing2({super.key, required this.schedule, required this.val});

  @override
  Widget build(BuildContext context) {

    final prevprevDate = val >= 2 ? schedule[val - 2]['date'].day : " ";
    final prevDate = val >= 1 ? schedule[val - 1]['date'].day : " ";
    final date = schedule[val]['date'].day;
    final nextDate = val + 1 < schedule.length
        ? schedule[val + 1]['date'].day
        : " ";
    final nextnextDate = val + 2 < schedule.length
        ? schedule[val + 2]['date'].day
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
