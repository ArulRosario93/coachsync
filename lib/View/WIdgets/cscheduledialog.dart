import 'package:flutter/material.dart';

class Cscheduledialog extends StatefulWidget {
  final DateTime date;
  final String day;
  const Cscheduledialog({super.key, required this.date, required this.day});

  @override
  State<Cscheduledialog> createState() => _CscheduledialogState();
}

class _CscheduledialogState extends State<Cscheduledialog> {

  late PageController? _pageController;
  late DateTime currentDate;
  late dynamic data;

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    handleLoadData();
  }

  void handleLoadData() async {

    // final count = await Datalocalstorage().handleKeyCount() - 1;
    // final data = await Datalocalstorage().handleGet(count);

    setState(() {
      currentDate = widget.date;
      _pageController = PageController(
        // Set Default Page to Total Days
        initialPage: 1000
      );
    });

    await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Update loading state
      _loading = false;
    });
  }

  void handleChangePage(int index) async {

    await Future.delayed(Duration(seconds: 2));

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 120,
          color: Colors.red,
          child: PageView.builder(
            physics: PageScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              handleChangePage(index);
            },
            itemBuilder: (context, index) {

              if(_loading){
                return Dialog(
                  backgroundColor: const Color.fromARGB(255, 228, 228, 228),
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  )
                );
              }
          
              return Dialog(
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
                          Text(widget.day, style: TextStyle(color: Colors.black),),
                          Text(widget.date.day.toString(), style: TextStyle(fontSize: 16, color: Colors.black),)
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
              );
            },
          ),
        ),
      ],
    );
  }
}