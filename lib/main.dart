import 'package:coachsync/View/ChatPage/chatpage.dart';
import 'package:coachsync/View/ClientPages/SuggestedTrainerPage/suggestedtrainerpage.dart';
import 'package:coachsync/View/ClientPages/WorkoutPage/workoutpage.dart';
import 'package:coachsync/View/ClientPages/clientpage.dart';
import 'package:coachsync/View/OnboardingPages/onboardingpage.dart';  
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const CoachSync());
}

class CoachSync extends StatelessWidget {
  const CoachSync({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.alataTextTheme(),
      ),
      home: ChatPage(),
    );
  }
}