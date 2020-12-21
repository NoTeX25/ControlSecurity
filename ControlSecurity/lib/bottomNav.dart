import 'package:flutter/material.dart';
import './placeholder_widget.dart';
import './dashboard.dart';
import './conmonTracking.dart';
import './notes.dart';

class BottomNav extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return BottomNavState();
  }
}




class BottomNavState extends State<BottomNav>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    PlaceholderWidget(Colors.black),
    ConmonTracking(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Colors.green,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.note),
            title: new Text('Notes'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('Todo List'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }
}