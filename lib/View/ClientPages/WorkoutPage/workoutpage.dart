import 'package:coachsync/View/WIdgets/playyoutubevideo.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController notesController = TextEditingController();

    List<dynamic> exercises = [
      {
        'name': "Stretches // Rotations",
        'reps': 10,
        'sets': 1,
        'videoURL': "https://www.youtube.com/watch?v=6UQRYaKLQZo&list=RD6UQRYaKLQZo&start_radio=1",
      },
      {
        'name': "Push ups",
        'reps': 20,
        'sets': 2,
        'videoURL': "",
      },
      {
        'name': "Plank",
        'reps': 2,
        'sets': 1,
        'videoURL': "",
      },
      {
        'name': "Incline Bench Press",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Chest Flys",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Chest Dips",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      
      {
        'name': "Shoulder Press",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Arnold Press",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Lateral Raises",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Tricep Dips",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Tricep Kickbacks",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },
      {
        'name': "Overhead Tricep Extensions",
        'reps': 12,
        'sets': 3,
        'videoURL': "",
      },

    ];


    return Scaffold(
      backgroundColor: Color(0xFF1B1B1B),
      appBar: AppBar(
        leadingWidth: 30,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        title: Text('CoachSync', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
      ),

      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
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
                          Text('${index+1}.', style: TextStyle(fontSize: 16,), textAlign: TextAlign.center,),

                          const SizedBox(width: 12,),

                          Expanded(child: Text(exercises[index]['name'], style: TextStyle(fontSize: 16),)),

                          Row(
                            children: [
                              IconButton(onPressed: () => showVideoDialog(context, exercises[index]['videoURL']), icon: Icon(Icons.play_arrow, color: Colors.black,)),
                              Text("Reps: ${exercises[index]['reps']}", style: TextStyle(fontSize: 14),),
                              const SizedBox(width: 8,),
                              Text("Sets: ${exercises[index]['sets']}", style: TextStyle(fontSize: 14),),
                            ],
                          )

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
                  // color of the textfield should be a light grey and the text should be white
                  style: TextStyle(color: Colors.white),
                  controller: notesController,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Notes',
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )
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