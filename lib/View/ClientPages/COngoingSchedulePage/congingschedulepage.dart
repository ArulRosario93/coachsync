import 'package:flutter/material.dart';

class COngingSchedulePage extends StatelessWidget {

  final GestureTapCallback? onTap;
  final Function(DateTime date, String day) onClick;

  const COngingSchedulePage({super.key, required this.onTap, required this.onClick});

  @override
  Widget build(BuildContext context) {


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

                  // SizedBox(
                  //   height: 60,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: List.generate(
                  //       schedule.length,
                  //       (i) => Flexible(
                  //         flex: 1,
                  //         child: GestureDetector(
                  //           onTap: () => onClick(schedule[i]['date'], schedule[i]['day']),
                  //           child: Center(
                  //             child: Stack(
                  //               children: [

                  //                 schedule[i]['day'] == 'Monday'? RotationTransition(
                  //                   turns: AlwaysStoppedAnimation(45 / 360),
                  //                   child: Container( width: 60, height: 60, color: Color(0xFF181818),),
                  //                 ): const SizedBox(),
                            
                  //                 Column(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   crossAxisAlignment: CrossAxisAlignment.center,
                  //                   children: [
                  //                     FittedBox(child: Text(schedule[i]['day'] == 'Monday' ? schedule[i]['day']: '', style: TextStyle(color: Colors.white),)),
                  //                     Text(schedule[i]['date'].day.toString(), style: TextStyle(color: Colors.white),),
                  //                   ],
                  //                 ),

                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       )
                  //     )
                  //   ),
                  // ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
