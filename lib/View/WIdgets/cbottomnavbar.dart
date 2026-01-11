import 'package:flutter/material.dart';

class ClientBottomNavBar extends StatelessWidget {
  const ClientBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: MediaQuery.of(context).size.width * .3),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 25
        ),
        unselectedIconTheme: IconThemeData(
          size: 25.0
        ),
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(Icons.home, color: Colors.black, ),
            ),
            backgroundColor: Colors.white,
          ),
      
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(Icons.person, color: Colors.black,),
            ),
            backgroundColor: Colors.white,
          ),
        ],
      
      ),
    );
  }
}
