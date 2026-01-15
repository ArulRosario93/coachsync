import 'package:flutter/material.dart';

class Cscheduledialog extends StatefulWidget {
  final int date;
  final String day;
  const Cscheduledialog({super.key, required this.date, required this.day});

  @override
  State<Cscheduledialog> createState() => _CscheduledialogState();
}

class _CscheduledialogState extends State<Cscheduledialog> {

  final PageController _pageController = PageController();

  late List<Widget> pages = [

    Dialog(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      alignment: Alignment.topCenter,
      child: Container(
        alignment: Alignment.center,
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(widget.day.toString(), style: TextStyle(color: Colors.black),),
                Text(widget.date.toString(), style: TextStyle(fontSize: 16, color: Colors.black),)
              ],
            ),

            Column(
              children: [
                Text("Workout Plan", style: TextStyle(color: Colors.black),),
                Text("Push Day", style: TextStyle(fontSize: 16, color: Colors.black),),
                
              ],
            )
          ],
        ),
      )
    ),

    Dialog(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      alignment: Alignment.topCenter,
      child: Container(
        alignment: Alignment.center,
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(widget.day.toString(), style: TextStyle(color: Colors.black),),
                Text(widget.date.toString(), style: TextStyle(fontSize: 16, color: Colors.black),)
              ],
            ),

            Column(
              children: [
                Text("Workout Plan", style: TextStyle(color: Colors.black),),
                Text("Push Day", style: TextStyle(fontSize: 16, color: Colors.black),),
                
              ],
            )
          ],
        ),
      )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: pages.length,
      onPageChanged: (index) {
        // user viewed this page
        print("Viewing page $index");

        // Example: add new page when last page is viewed
        if (index == pages.length - 1) {
          setState(() {
            pages.insert(index, Dialog(
              backgroundColor: const Color.fromARGB(255, 228, 228, 228),
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.center,
                height: 65,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(widget.day.toString(), style: TextStyle(color: Colors.black),),
                        Text(widget.date.toString(), style: TextStyle(fontSize: 16, color: Colors.black),)
                      ],
                    ),

                    Column(
                      children: [
                        Text("Workout Plan", style: TextStyle(color: Colors.black),),
                        Text("Push Day", style: TextStyle(fontSize: 16, color: Colors.black),),
                        
                      ],
                    )
                  ],
                ),
              )
            ),
          );
          });
        }
      },
      itemBuilder: (context, index) {
        return pages[index];
      },
    );
  }
}