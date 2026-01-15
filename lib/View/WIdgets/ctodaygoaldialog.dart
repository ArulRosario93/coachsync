import 'package:flutter/material.dart';

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

void handleBottomSheet(context){
  showModalBottomSheet(
    context: context,
    backgroundColor: const Color.fromARGB(255, 24, 24, 24),
    builder:(context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            const SizedBox(height: 20,),
            Divider(thickness: 4, indent: 20, endIndent: 20, radius: BorderRadius.circular(5), color: Colors.white,),
            const SizedBox(height: 20,),
            Text("Let's Achieve The Goal's", style: TextStyle(color: const Color.fromARGB(255, 212, 212, 212)),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Stack(
                    alignment: AlignmentGeometry.center,
                    children: 
                    
                      List.generate(
                        goals.length, (index) {
                
                          final double maxSize = 120; // outermost circle size
                          final double ringGap = 8;  // space between each ring
                
                          final double size = maxSize - (index * ringGap * 2.5);
                
                          return SizedBox(
                            height: size,
                            width: size,
                            child: CircularProgressIndicator.adaptive(value: goals[index]['value'], strokeWidth: 6.0, backgroundColor: Colors.blueGrey, valueColor: AlwaysStoppedAnimation<Color>(goals[index]['color'])));
      
                        }
                      ),
                  ),
                ),
      
                const SizedBox(width: 20,),
      
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    goals.length,
                    (index) {
                      return GestureDetector(
                        onTap: () => handleDialog(context, goals[index]['name']),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(width: 10, height: 10, color: goals[index]['color'],),
                            const SizedBox(width: 8,),
                            Text(goals[index]['name'], style: TextStyle(color: Colors.white),),

                            const SizedBox(height: 8,),
                          ],
                        ),
                      );
                    }
                  ),
                ),
                
              ],
            ),

            Text('Click on List to fill up the goal', style: TextStyle(color: Colors.white),),

            const SizedBox(height: 20,),
          ],
        ),
    ),
  );
}

void handleDialog(context, String name){

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  showDialog(
    context: context, 
    builder:(context) => AlertDialog(
      backgroundColor: const Color.fromARGB(255, 23, 23, 23),
      // title: Text("Hola there", style: TextStyle(color: Colors.white),),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Let's Achieve The Goal's $name", style: TextStyle(color: Colors.white,), textAlign: TextAlign.center,),

          SizedBox(height: 16,),

          Row(
            children: [
              Flexible(
                child: TextField(
                  style: TextStyle(color: Colors.white,),
                  textAlign: TextAlign.center,
                  controller: controller1,
                  autofocus: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0)
                    ),
                    border: OutlineInputBorder(),                    
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Text('/', style: TextStyle(color: Colors.white),),
              SizedBox(width: 5,),
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: BoxBorder.all(
                      color: Colors.white
                    )
                  ),
                  child: Text('60', style: TextStyle(color: const Color.fromARGB(255, 218, 218, 218)),),
                )
              ),
            ],
          )
        ],
      ),
    ),
  );
}   