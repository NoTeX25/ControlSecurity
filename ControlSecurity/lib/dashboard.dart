import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return DashboardState();
  }
}



//basic skeleton of buttons used for dashboard


class DashboardState extends State<Dashboard>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}