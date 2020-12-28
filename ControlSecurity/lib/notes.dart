import 'package:flutter/material.dart';


class Notes extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return NotesState();
  }
}


class NotesState extends State<Notes>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('Notes', style: TextStyle(
          color: Colors.black),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}