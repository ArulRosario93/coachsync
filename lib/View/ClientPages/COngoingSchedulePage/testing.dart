import 'package:coachsync/View/ClientPages/COngoingSchedulePage/testing2.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {

  int currentDay = 0;

  List schedule = [
      {
        'date': DateTime(2025, 1, 01),
        'day': '',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Push Day', 'Grow Big or Grow Old'],
      },
      {
        'date': DateTime(2025, 1, 02),
        'day': 'Tuesday',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Pull Day'],
      },
      {
        'date': DateTime(2025, 1, 03),
        'day': 'Wednesday',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Leg Day', "If you're not thick, then you're not my chick"]
      },
      {
        'date': DateTime(2025, 1, 04),
        'day': 'Thursday',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Push'],
      },
      {
        'date': DateTime(2025, 1, 05),
        'day': 'Friday',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Pull']
      },
      {
        'date': DateTime(2025, 1, 06),
        'day': 'Saturday',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Leg Day', "If you're not thick, then you're not my chick"],
      },
      {
        'date': DateTime(2025, 1, 07),
        'day': 'Sunday',
        'image': 'https://imgix.bustle.com/uploads/image/2023/7/12/aadc7254-5882-4faf-a013-88d274e69ad3-gettyimages-653821928.jpg?w=374&h=250&fit=crop&crop=focalpoint&dpr=2&fp-x=0.3653&fp-y=0.4431',
        'content': ['Rest'],
      }
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
                  children: 
                      List.generate(
                        schedule.length,
                        (index) => Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(schedule[index]['image']),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30), alignment: Alignment.bottomLeft, color: Colors.black38, 
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: List.generate(schedule[index]['content'].length, (current) => Text(schedule[index]['content'][current], style: TextStyle(fontSize: current == 1? 14 : 18, color: Colors.white, fontWeight: current == 1? FontWeight.w400 : FontWeight.w600),),))
                          ),
                        ],
                      ),
                    )
                  
              ))
            ],
          ),
        ),
        Testing2(schedule: schedule, val: currentDay)
      ],
    );
  }
}
