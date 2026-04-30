import 'package:flutter/material.dart';

class COngingSchedulePage extends StatelessWidget {

  final GestureTapCallback? onTap;
  final Function(DateTime date, String day) onClick;

  const COngingSchedulePage({super.key, required this.onTap, required this.onClick});

  @override
  Widget build(BuildContext context) {

    List dates = [
      {
        'date': DateTime(2025, 1, 01),
        'day': 'Monday',
      },
      {
        'date': DateTime(2025, 1, 02),
        'day': 'Tuesday'
      },
      {
        'date': DateTime(2025, 1, 03),
        'day': 'Wednesday',
      },
      {
        'date': DateTime(2025, 1, 04),
        'day': 'Thursday'
      },
      {
        'date': DateTime(2025, 1, 05),
        'day': 'Friday',
      },
      {
        'date': DateTime(2025, 1, 06),
        'day': 'Saturday'
      },
      {
        'date': DateTime(2025, 1, 07),
        'day': 'Sunday',
      }
    ];

    // var today = DateTime.now();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [

            SizedBox(
              height: 240,
              child: Stack(
                children: [

                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      color: Colors.amber,
                      height: 150,
                      margin: EdgeInsets.only(top: 60),
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
                                Text('Push Day', style: TextStyle(color: Colors.white),),
                                Text('Day: 05/100', style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        dates.length, 
                        (i) => Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () => onClick(dates[i]['date'], dates[i]['day']),
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
                                      Text(dates[i]['date'].day.toString(), style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                            
                                ],
                              ),
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
