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
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}