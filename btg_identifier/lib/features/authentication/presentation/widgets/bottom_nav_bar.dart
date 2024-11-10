import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // To track the selected index

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.green,  // Set the selected item color to green
      unselectedItemColor: Colors.grey,  // Color for unselected items
      currentIndex: _currentIndex,  // Current selected index
      onTap: (index) {
        setState(() {
          _currentIndex = index;  // Update the selected index when tapped
        });

        // Handle item tap here. For example, navigate or update state
        switch (index) {
          case 0:
            print("Navigating to About");
            break;
          case 1:
            print("Navigating to Home");
            break;
          case 2:
            print("Navigating to Grades");
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grade),
          label: 'Grades',
        ),
      ],
    );
  }
}
