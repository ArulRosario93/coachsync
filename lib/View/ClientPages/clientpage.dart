import 'dart:convert';
import 'package:coachsync/View/ClientPages/COngoingSchedulePage/congingschedulepage.dart';
import 'package:coachsync/View/ClientPages/WorkoutPage/workoutpage.dart';
import 'package:coachsync/View/WIdgets/cbottomnavbar.dart';
import 'package:coachsync/View/WIdgets/ctodaygoal.dart';
import 'package:coachsync/View/WIdgets/ctomorrowplan.dart';
import 'package:coachsync/ViewModel/DataStoreMethods.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height;
    final scroll = height < 700;

    print(height - (230 + 150));

    void handkeChange() async {

      final res = await Datastoremethods().addUserInfoToDB('Arul Rosario', {
        'DOB': '01-01-2000',
        'Height': '180 cm',
        'Weight': '75 kg'
      });

      final data = jsonDecode(res.body);
      print(data);

    }

    void handleClick() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WorkoutPage()),
        );
    }

    return Scaffold(
      backgroundColor: Color(0xFF181818),
      bottomNavigationBar: 
      ClientBottomNavBar(),
      
      appBar: AppBar(
        backgroundColor: Color(0xFF181818),
        title: Hero(tag: 'appname', child: Material(color: Colors.transparent, child: Text('CoachSync', style: TextStyle(fontSize: 20, color: Colors.white),))),
      ),

      body: scroll? SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            COngingSchedulePage(onTap: handleClick,),
            CTodaysGoal(),
            CTomorrowPlan()
          ],
        ),
      ): Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            COngingSchedulePage(onTap: handleClick,),
            CTodaysGoal(),
            CTomorrowPlan(),
          ],
        )
    );
  }
}