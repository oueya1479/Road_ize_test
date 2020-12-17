import 'package:road_ize/screens/map_screen.dart';
import 'package:road_ize/screens/add_screen.dart';
import 'package:road_ize/screens/feed_screen.dart';
import 'package:road_ize/screens/search_screen.dart';
import 'package:road_ize/screens/user_screen.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _currentIndex = 0;
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    MapScreen(),
    SearchScreen(),
    AddScreen(),
    FeedScreen(),
    UserScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.greenAccent.shade700,
          currentIndex: _currentIndex,
          onTap: _onTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.wifi), label: 'Feed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: 'User'),
          ],
        ),
      ),
    );
  }
}
