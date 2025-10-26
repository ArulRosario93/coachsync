import 'package:flutter/material.dart';

class CTomorrowPlan extends StatelessWidget {
  const CTomorrowPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tomorrow Plan', style: TextStyle(color: Colors.white, fontSize: 18),),
      
          Container(
            height: 120, 
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/OnboardingImages/hurray.png'), fit: BoxFit.cover)
            ),
          )
        ],
      ),
    );
  }
}