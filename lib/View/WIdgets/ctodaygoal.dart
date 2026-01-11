import 'package:coachsync/View/WIdgets/ctodaygoaldialog.dart';
import 'package:flutter/material.dart';

class CTodaysGoal extends StatelessWidget {
  const CTodaysGoal({super.key});

  @override
  Widget build(BuildContext context) {

    List goals = [
      {
        'name': 'Calories Brunt',
        'color': Color.fromARGB(255, 255, 0, 0),
        'value': .56
      },
      {
        'name': 'Sleep',
        'color': Color.fromARGB(255, 0, 255, 162),
        'value': .34
      },
      {
        'name': 'Calories Brunt',
        'color': Color.fromARGB(255, 255, 0, 0),
        'value': .56
      },
      {
        'name': 'Sleep',
        'color': Color.fromARGB(255, 0, 255, 162),
        'value': .34
      },
      {
        'name': 'Calories Brunt',
        'color': Color.fromARGB(255, 255, 0, 0),
        'value': .56
      },
    ];


    return Column(
      children: [


        Text("Today's Goal", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
    
        GestureDetector(
          onTap: () => handleBottomSheet(context),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: 
              
                List.generate(
                  goals.length, (index) {
          
                    final double maxSize = 220; // outermost circle size
                    final double ringGap = 18;  // space between each ring
          
                    final double size = maxSize - (index * ringGap * 2.5);
          
                    return SizedBox(
                      height: size,
                      width: size,
                      child: CircularProgressIndicator.adaptive(value: goals[index]['value'], strokeWidth: 10.0, backgroundColor: Colors.blueGrey, valueColor: AlwaysStoppedAnimation<Color>(goals[index]['color'])));
                    
                  }
                ),
            ),
          ),
        ),
    
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 15,      // horizontal space between items
            runSpacing: 10,   // Full vertical space between rows
            children: List.generate(
              goals.length,
              (index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 10, height: 10, color: goals[index]['color'],),
                      const SizedBox(width: 5,),
                      Text(goals[index]['name'], style: TextStyle(color: Colors.white),),
                        
                      const SizedBox(width: 15,),
                    ],
                  );
                }
              ),
          ),
        ),

        const SizedBox(height: 20,),
      ],
    );
  }
}