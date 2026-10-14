import 'package:coachsync/View/ClientPages/COngoingSchedulePage/testing.dart';
import 'package:coachsync/View/WIdgets/ctodaygoal.dart';
import 'package:coachsync/View/WIdgets/ctomorrowplan.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          // COngingSchedulePage(onTap: handleClick, onClick: handleClickDate,),
          Testing(),
          CTodaysGoal(),
          CTomorrowPlan()
        ],
      )
;
  }
}