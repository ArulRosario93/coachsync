import 'package:coachsync/View/ClientPages/COngoingSchedulePage/testing2.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {

  int currentDay = 0;

  List<DateTime> dates = [
    DateTime(2026, 10, 18),
    DateTime(2026, 10, 19),
    DateTime(2026, 10, 20),
    DateTime(2026, 10, 21),
    DateTime(2026, 10, 22),
    DateTime(2026, 10, 23),
    DateTime(2026, 10, 24),
  ];

  void handleChanged(int val){
    setState(() {
      currentDay = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: handleChanged,
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber, 
                      ),
                      alignment: Alignment.center,),
                    Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      alignment: Alignment.center,
                    )
                  ],
                )
              )
            ],
          ),
        ),
        Testing2(datetime: dates, val: currentDay)
      ],
    );
  }
}