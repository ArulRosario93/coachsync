import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController notesController = TextEditingController();

    List<dynamic> exercises = [
      {
        'name': "Warm Ups",
        'reps': 2,
        'videoURL': "",
      },
      {
        'name': "Warm Ups",
        'reps': 2,
        'videoURL': "",
      },
      {
        'name': "Warm Ups",
        'reps': 2,
        'videoURL': "",
      },
      {
        'name': "Warm Ups",
        'reps': 2,
        'videoURL': "",
      },
      {
        'name': "Warm Ups",
        'reps': 2,
        'videoURL': "",
      },
      {
        'name': "Warm Ups",
        'reps': 2,
        'videoURL': "",
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFF1B1B1B),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        title: Text('CoachSync', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
      ),

      body: Column(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('Workout Page Content Here'),
          ), 
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children:
                  List.generate(exercises.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text((index+1).toString(), style: TextStyle(fontSize: 16,), textAlign: TextAlign.center,),

                          const SizedBox(width: 20,),
                      
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage('assets/OnboardingImages/hurray.png',), fit: BoxFit.cover),
                            ),
                          ),
                      
                          const SizedBox(width: 20,),
                      
                          Text(exercises[index]['name'], style: TextStyle(fontSize: 16),),
                      
                          Spacer(),
                      
                          Text("x" + exercises[index]['reps'].toString(), style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    );
                  })
              ),
            ),
          ),

          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: notesController,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Notes',
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text('Start Workout', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}