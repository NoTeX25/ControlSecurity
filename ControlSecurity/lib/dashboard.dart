import 'package:flutter/material.dart';
import './conmonTracking.dart';
import './notes.dart';

class Dashboard extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return DashboardState();
  }
}


class DashboardState extends State<Dashboard>{

  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice){
                return Tab(
//                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice){
              return Container(
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        )
      ),
    );
  }
}


class Choice{
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}


const List<Choice> choices = const <Choice>[
  const Choice(title: 'Notes', icon: Icons.note),
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Calendar', icon: Icons.calendar_today),
];


class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white, //color will change this is just for a test
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}