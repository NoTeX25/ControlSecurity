import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class ConmonTracking extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return ConmonTrackingState();
  }
}


class ConmonTrackingState extends State<ConmonTracking>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ConMon Tracker')
      ),
      body: SfCalendar(
    view: CalendarView.month,
    monthViewSettings: MonthViewSettings(showAgenda: true),
  ));
  }
}