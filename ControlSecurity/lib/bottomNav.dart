import 'package:flutter/material.dart';
import './conmonTracking.dart';
import './notes.dart';

class BottomNav extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return BottomNavState();
  }
}


class BottomNavState extends State<BottomNav>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar')
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this is set when the new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.note),
            title: new Text('Notes'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('Calendar'),
          ),
        ],
      ),
    );
  }
}