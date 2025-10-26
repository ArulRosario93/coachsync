import 'package:flutter/material.dart';

class ScheduleStartingInDaysPage extends StatelessWidget {
  const ScheduleStartingInDaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Your Workout plan starts in', style: TextStyle(color: Colors.white, fontSize: 18),),
        Text('10', style: TextStyle(color: Colors.white, fontSize: 25),),
        Text('days', style: TextStyle(color: Colors.white, fontSize: 20),),
        Text('View Workout Plan', style: TextStyle(color: Colors.white, fontSize: 16),),


        // Starting Workout Plan
        Text('09/24/25', style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.left,),
        const SizedBox(height: 10,),
        Container(
          height: 120, 
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(image: AssetImage('assets/OnboardingImages/hurray.png'), fit: BoxFit.cover)
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                left: 10,
                child: Text('Push Day'),
              )
            ],
          ),
        )
      ],
    );
  }
}
