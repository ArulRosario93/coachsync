import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    List msgs = [
      {
        'uid': '',
        'type': 'header',
        'message': 'Hello, how can I assist you today?',
        'timestamp': DateTime.now().subtract(Duration(minutes: 5)),
      },
      {
        'uid': 'user123',
        'type': 'text',
        'message': 'I would like to know more about your training programs.',
        'timestamp': DateTime.now().subtract(Duration(minutes: 4)),
      },
      {
        'uid': '',
        'type': 'text',
        'message': 'Sure! We offer a variety of training programs tailored to your needs.',
        'timestamp': DateTime.now().subtract(Duration(minutes: 3)),
      },
      {
        'uid': 'user123',
        'type': 'text',
        'message': 'That sounds great! Can you provide more details?',
        'timestamp': DateTime.now().subtract(Duration(minutes: 2)),
      },
      {
        'uid': '',
        'type': 'text',
        'message': 'Absolutely! Our programs include strength training, cardio, and flexibility exercises.',
        'timestamp': DateTime.now().subtract(Duration(minutes: 1)),
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/OnboardingImages/hurray.png'),
            ),
            SizedBox(width: 10,),
            Text('Arul Rosario', style: TextStyle(fontSize: 18, color: Colors.white),),
          ],
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: 
                  List.generate(
                    msgs.length, 
                    (index) {

                      if (msgs[index]['type'] == 'header') {
                        return SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                              height: 120,
                              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.sizeOf(context).width * 0.7,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/OnboardingImages/hurray.png'), fit: BoxFit.cover, opacity: 0.4),
                                color: msgs[index]['uid'] == ''? Colors.black87 : Colors.white,
                                // color: msgs[index]['uid'] == '' ? Colors.black54 : const Color.fromARGB(255, 239, 239, 239),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('09/27', style: TextStyle(color: Colors.white70, fontSize: 14),),
                                            Text('11 mins', style: TextStyle(color: Colors.white70, fontSize: 14),),
                                          ],
                                        ),
                                         Spacer(),
                                         Text('Pust Day', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                                         SizedBox(height: 5,),
                                         Text('Workout Completed', style: TextStyle(color: Colors.white70, fontSize: 16),),
                                      ],
                                    ),
                                  )

                                ],
                              )
                            ),
                            ],
                          )
                        );
                      }

                      return SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Column(
                          crossAxisAlignment: msgs[index]['uid'] == '' ? CrossAxisAlignment.end: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.sizeOf(context).width * 0.7,
                              ),
                              decoration: BoxDecoration(
                                color: msgs[index]['uid'] == ''? Colors.black87 : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(msgs[index]['message'], style: TextStyle(color: msgs[index]['uid'] == '' ? Colors.white : Colors.black, fontSize: 16), textAlign: msgs[index]['uid'] == ''? TextAlign.left: TextAlign.left,)
                            ),
                          ],
                        ),
                      );
                    }
                  )
              ),
            ),
          ), 

          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.grey[900],
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: 'Type a message',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white,),
                  onPressed: () {
                    // Handle send action
                    print('send message');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
