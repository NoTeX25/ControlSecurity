import 'package:flutter/material.dart';
import './conmonTracking.dart';
import './notes.dart';

class Dashboard extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return DashboardState();
  }
}

//Controllers will be stored here:




//basic skeleton of buttons used for dashboard
//Build widgets here: 
Widget _buildContainer(){
  return SizedBox.expand(
    child: Container(
      color: Colors.teal,
    ),
  );
}

class DashboardState extends State<Dashboard>{

  @override
  Widget build(BuildContext context){
    return SizedBox.expand(
      
        child: DefaultTabController(
        length: 3, //number of tabs
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.note)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.calendar_today)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}