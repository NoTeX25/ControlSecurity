import 'package:flutter/material.dart';
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
  
  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }
  
  final List<Widget> _children = [
    Dashboard(),
    Notes(),
    ConmonTracking(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          //boxShadow can be placed here:
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Colors.green,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            
            icon: new Icon(Icons.home),
            // ignore: deprecated_member_use
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.note),
            // ignore: deprecated_member_use
            title: new Text('Notes'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            // ignore: deprecated_member_use
            title: new Text('Todo List'),
          ),
        ],
      ),
        ),
      ),
    );
  }
}