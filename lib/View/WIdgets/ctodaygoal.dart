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
    ];

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Today's Goal", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
      
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: 
      
                List.generate(
                  goals.length, (index) {
                    return SizedBox(
                      height: goals.length * 50 * (1   - (index * 0.25)),
                      width: goals.length * 50 * (1 - (index * 0.25)),
                      child: CircularProgressIndicator.adaptive(value: goals[index]['value'], strokeWidth: 8.0, backgroundColor: Colors.blueGrey, valueColor: AlwaysStoppedAnimation<Color>(goals[index]['color'])));
                    
                  }
                ),
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment:  MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    goals.length,
                    (index) {
                        return Row(
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
                )
              )
            ],            
          )
        ],
      ),
    );
  }
}