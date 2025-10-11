import 'package:coachsync/View/ClientPages/clientpage.dart';
import 'package:flutter/material.dart';

class CLandingPage extends StatefulWidget {
  const CLandingPage({super.key});

  @override
  State<CLandingPage> createState() => _CLandingPageState();
}

class _CLandingPageState extends State<CLandingPage> {

  Future<Object?> get nav => Navigator.pushReplacement(
    context, 
    PageRouteBuilder(
      transitionDuration: const Duration(seconds: 2),
      pageBuilder: (_,_,_) => const ClientPage())
  );

  void handleChange() async {
      await Future.delayed(Duration(seconds: 3));
      nav;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
    handleChange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      body: Center(
        child: Hero(tag: 'appname', child: Material(color: Colors.transparent, child: Text('CoachSync', style: TextStyle(fontSize: 30, color: Colors.white)))),
      ),
    );
  }
}