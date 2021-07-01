import 'package:flutter/material.dart';
import './bottomNav.dart';



class ConmonTracking extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return ConmonTrackingState();
  }
}


class ConmonTrackingState extends State<ConmonTracking>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('ConMon Tasks', style: TextStyle(
          color: Colors.black
        ),
        ),
      )
    );
  }




} //end ConmonTrackingState