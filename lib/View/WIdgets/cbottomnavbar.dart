import 'package:coachsync/View/ChatPage/chatpage.dart';
import 'package:coachsync/View/CreatePage/createpage.dart';
import 'package:coachsync/View/ProfilePage/profilepage.dart';
import 'package:coachsync/View/SearchPage/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:coachsync/View/ClientPages/clientpage.dart';

class ClientBottomNavBar extends StatelessWidget {
  const ClientBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {

    void handleNavigation(int index) {
      // Handle navigation based on the selected index
      switch (index) {
        case 0:
          // Navigate to Home
          Navigator.push(context, MaterialPageRoute(builder: (context) => ClientPage()));
          break;
        case 1:
          // Navigate to Search
          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
          break;
        case 2:
          // Navigate to Chat
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
          break;
        case 3:
          // Navigate to Create
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePage()));
          break;
        case 4:
          // Navigate to Profile
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
          break;
      }
    }

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: MediaQuery.of(context).size.width * .0001),
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
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(icon: Icon(Icons.home, color: Colors.black), onPressed: () => handleNavigation(0),)
            ),
            backgroundColor: Colors.white,
          ),

          BottomNavigationBarItem(
            label: 'Search',
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () => handleNavigation(1),)
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(icon: Icon(Icons.chat, color: Colors.black), onPressed: () => handleNavigation(2),)
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Create',
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(icon: Icon(Icons.add, color: Colors.black), onPressed: () => handleNavigation(3),)
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(icon: Icon(Icons.person, color: Colors.black), onPressed: () => handleNavigation(4),)
            ),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}