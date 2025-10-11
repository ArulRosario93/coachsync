import "package:coachsync/View/OnboardingPages/OBIntroPage/obintropage.dart";
import "package:flutter/material.dart";

class OBLandingPage extends StatefulWidget {
  const OBLandingPage({super.key});

  @override
  State<OBLandingPage> createState() => _OBLandingPageState();
}

class _OBLandingPageState extends State<OBLandingPage> {

  Future<Object?> get nav => Navigator.pushReplacement(context, PageRouteBuilder(
      transitionDuration: const Duration(seconds: 2), //  👈 slower
      pageBuilder: (_, __, ___) => const OBIntroPage(),
    ),
  );

  void handleChange() async {
    await Future.delayed(Duration(seconds: 3));
    nav;
  }

  @override
  void initState() {
    super.initState();

    handleChange();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(237, 0, 0, 0),
      body: Center(
        child: Hero(tag: 'appname', child: Material(color: Colors.transparent, child: Text("CoachSync", style: TextStyle(fontSize: 30, color: Colors.white,),))),
      )
    );
  }

}