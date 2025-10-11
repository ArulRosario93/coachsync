import 'package:coachsync/View/ClientPages/COngoingSchedulePage/congingschedulepage.dart';
import 'package:coachsync/View/ClientPages/CSearchTrainerPage/csearchtrainerpage.dart';
import 'package:coachsync/View/WIdgets/cbottomnavbar.dart';
import 'package:coachsync/ViewModel/AuthMethods.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {

    void handleSignIn() async {

      final res = await Authmethods().moveUserWithGoogleSignIn();

      print(res);

    }

    return Scaffold(
      backgroundColor: Color(0xFF181818),
      bottomNavigationBar: 
      ClientBottomNavBar(),
      
      appBar: AppBar(
        backgroundColor: Color(0xFF181818),
        title: Hero(tag: 'appname', child: Material(color: Colors.transparent, child: Text('CoachSync', style: TextStyle(fontSize: 20, color: Colors.white),))),
      ),

      body: Center(
        child: GestureDetector(
          onTap: handleSignIn,
          child: Text('Click me', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}