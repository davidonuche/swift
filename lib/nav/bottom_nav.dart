import 'package:flutter/material.dart';
import 'package:swift/screens/alert_screen.dart';
import 'package:swift/screens/home_screen.dart';
import 'package:swift/screens/location_screen.dart';
import 'package:swift/screens/profile_screen.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomeScreen(),
            AlertScreen(),
            LocationScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 253, 252, 252),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.red),
            label: 'Alert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.red),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.red),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
