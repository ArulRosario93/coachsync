import 'dart:convert';
import 'package:coachsync/View/ChatPage/chatpage.dart';
import 'package:coachsync/View/ClientPages/COngoingSchedulePage/congingschedulepage.dart';
import 'package:coachsync/View/ClientPages/WorkoutPage/workoutpage.dart';
import 'package:coachsync/View/WIdgets/cbottomnavbar.dart';
import 'package:coachsync/View/WIdgets/cscheduledialog.dart';
import 'package:coachsync/View/WIdgets/ctodaygoal.dart';
import 'package:coachsync/View/WIdgets/ctomorrowplan.dart';
import 'package:coachsync/ViewModel/DataLocalStorage.dart';
import 'package:coachsync/ViewModel/DataStoreMethods.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {

  static const dates = ['01/01/26', '02/01/26', '03/01/26'];

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

    void handleChatPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    }

    void handleGetdata() async {
      var res = await Datalocalstorage().handleGet('12/01');

      print(res);
    }

    void handleStoreData() async {
      var res = await Datalocalstorage().handleStore("12/01", 'HOLD UP');
      
      print(res);
    }

    void handleClickDate(int date, String day) {

      // Get info from datastore based on date clicked

      showDialog(
        context: context, builder: (context) => Cscheduledialog(date: date, day: day)
      );
    
    }

  @override
  void initState() {
    super.initState();

    handleGetdata();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF181818),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: 
      ClientBottomNavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF181818),
        title: Hero(tag: 'appname', child: Material(color: Colors.transparent, child: Text('CoachSync', style: TextStyle(fontSize: 20, color: Colors.white),))),
        actions: [
          IconButton(
            onPressed: handleChatPage,
            icon: Icon(Icons.chat_outlined, color: Colors.white,),
          )
        ],
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            COngingSchedulePage(onTap: handleClick, onClick: handleClickDate,),
            CTodaysGoal(),
            CTomorrowPlan()
          ],
        ),
      )
    );
  }
}