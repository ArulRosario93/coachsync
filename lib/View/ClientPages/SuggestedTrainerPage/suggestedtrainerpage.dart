import 'package:flutter/material.dart';

class Suggestedtrainerpage extends StatelessWidget {
  const Suggestedtrainerpage({super.key});

  @override
  Widget build(BuildContext context) {

    List trainers = [
      'Trainer 1',
      'Trainer 2',
      'Trainer 3',
      'Trainer 4',
      'Trainer 5',
    ];

    final TextEditingController searchController = TextEditingController();

    handleTrainerProfile() {
      return showDialog(
        context: context, 
        builder: (BuildContext context) {
          return AlertDialog(
              // contentPadding: EdgeInsets.all(10),
              // actionsPadding: EdgeInsets.all(10),
              constraints: BoxConstraints(
                // maxWidth: 300,
                maxHeight: 500,
              ),
            content: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 31, 31, 31),
                    image: DecorationImage(image: AssetImage('assets/OnboardingImages/hurray.png'), fit: BoxFit.cover, opacity: 0.8),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Arul Rosario", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      Text("Good in Training Beginners", style: TextStyle(fontSize: 16, color: Colors.white,),),

                      // Stars
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star_half, color: Colors.amber,),
                        ],
                      ),
                  
                      // About
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", textAlign: TextAlign.left, style: TextStyle(color: Colors.white,))
                    ],
                  ),
                )
              ],
            ),
            actions: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                alignment: Alignment.center,
                child: Text('Request Trainer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
              )
            ],
          );
        }
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: Text('CoachSync'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search Trainers',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        
            const SizedBox(height: 20,),
        
            Text('Suggested Trainers', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  
            const SizedBox(height: 10,),
                      
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var i = 0; i < trainers.length; i+=2)
                      Flex(
                        mainAxisAlignment: MainAxisAlignment.center,
                        direction: Axis.horizontal,
                        children: [
                          Flexible(
                            child: GestureDetector( onTap: handleTrainerProfile,child: Container(alignment: Alignment.center, margin: EdgeInsets.only(bottom: 20), decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(10)), height: 240,child: Text(trainers[i]))),
                          ),
                          SizedBox(width: 20,),
                          trainers.length > i+1 ? Flexible(
                            child: GestureDetector( onTap: handleTrainerProfile,child: Container(alignment: Alignment.center, margin: EdgeInsets.only(bottom: 20), decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(10)), height: 240,child: Text(trainers[i+1]))),
                          ) : Flexible(child: Container()),
                        ],
                      )
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}