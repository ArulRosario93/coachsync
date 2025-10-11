import 'package:flutter/material.dart';

class COngingSchedulePage extends StatelessWidget {
  const COngingSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {

    List dates = [
      {
        'date': 23,
        'day': 'Monday',
      },
      {
        'date': 24,
        'day': 'Tuesday'
      },
      {
        'date': 25,
        'day': 'Wednesday',
      },
      {
        'date': 26,
        'day': 'Thursday'
      },
      {
        'date': 27,
        'day': 'Friday',
      },
      {
        'date': 28,
        'day': 'Saturday'
      },
      {
        'date': 29,
        'day': 'Sunday',
      }
    ];

    var today = DateTime.now();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [

            SizedBox(
              height: 230,
              child: Stack(
                children: [
              
                  Container(
                    color: Colors.amber,
                    height: 150,
                    margin: EdgeInsets.only(top: 50),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('assets/OnboardingImages/run.png', height: 150, fit: BoxFit.cover,),
                                  
                        Container(color: const Color.fromARGB(108, 0, 0, 0), alignment: Alignment.center,),
                                  
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Day: 05/100', style: TextStyle(color: Colors.white),),
                              Text('Push Day', style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        dates.length, (i) => Flexible(
                          flex: 1,
                          child: Center(
                            child: Stack(
                              children: [
                                
                                dates[i]['day'] == 'Monday'? RotationTransition(
                                  turns: AlwaysStoppedAnimation(45 / 360),
                                  child: Container( width: 60, height: 60, color: Color(0xFF181818),),
                                ): const SizedBox(),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FittedBox(child: Text(dates[i]['day'] == 'Monday' ? dates[i]['day']: '', style: TextStyle(color: Colors.white),)),
                                    Text(dates[i]['date'].toString(), style: TextStyle(color: Colors.white),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        )
                      )
                    ),
                  ),
                ],
              ),
            )
      
        ],
      ),
    );
  }
}
