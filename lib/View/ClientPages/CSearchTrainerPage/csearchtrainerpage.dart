
import 'package:coachsync/View/WIdgets/inputfield.dart';
import 'package:flutter/material.dart';

class CSearchTrainerPage extends StatelessWidget {
  const CSearchTrainerPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController controller = TextEditingController();

    return Column(
      children: [

          Container(
            width: MediaQuery.of(context).size.width *.85,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search for Trainer',
                fillColor: Colors.black,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.0)
                )
              ),
            )
          ),

          const SizedBox(height: 20,),

          Text('Suggexted Premium Trainer'),

          const SizedBox(height: 20,),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              child: Column(
                children: [
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      direction: Axis.horizontal, 
                      children: [
                        Flexible(
                            child: Stack(
                              fit: StackFit.loose,
                              alignment: Alignment.bottomLeft,
                              children: [
                                
                                Image.asset('assets/OnboardingImages/run.png', height:250, fit: BoxFit.cover, alignment: Alignment.center,),

                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Rosh', style: TextStyle(fontSize: 20),),

                                      const SizedBox(height: 5,),

                                      Text('Expert in Bulk', style: TextStyle(fontSize: 15)),

                                      const SizedBox(height: 5,),

                                      Text('Stars', style: TextStyle(fontSize: 10))
                                    ],
                                  )
                                )
                              ],
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Stack(
                            fit: StackFit.loose,
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.asset('assets/OnboardingImages/run.png', height: 250, fit: BoxFit.cover, alignment: Alignment.center,),

                              Positioned(
                                bottom: 5,
                                left: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Rosh', style: TextStyle(fontSize: 20),),

                                    const SizedBox(height: 8,),

                                    Text('Expert in Bulk', style: TextStyle(fontSize: 15)),

                                    const SizedBox(height: 8,),

                                    Text('Stars', style: TextStyle(fontSize: 15))
                                  ],
                                )
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                ],
              ),
            )
          )
      ],
    );
  }
}