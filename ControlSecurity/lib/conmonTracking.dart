import 'package:flutter/material.dart';
import 'package:device_calendar/device_calendar.dart';

class ConmonTracking extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return ConmonTrackingState();
  }
}

//Creating a global Device Calendar object here:
List<Calendar> _calendars;
Calendar _selectedCalendar;



class ConmonTrackingState extends State<ConmonTracking>{
DeviceCalendarPlugin _deviceCalendarPlugin;


List<Calendar> _calendars;
Calendar _selectedCalendar;

ConmonTrackingState(){
  _deviceCalendarPlugin = new DeviceCalendarPlugin();
}

  @override
  initState() {
    super.initState();
    _retrieveCalendars();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.black,
      ),
    );
  }

  //retrieve calanders async function:
 void _retrieveCalendars() async {
    //Retrieve user's calendars from mobile device
    //Request permissions first if they haven't been granted
    try {
      var permissionsGranted = await _deviceCalendarPlugin.hasPermissions();
      if (permissionsGranted.isSuccess && !permissionsGranted.data) {
        permissionsGranted = await _deviceCalendarPlugin.requestPermissions();
        if (!permissionsGranted.isSuccess || !permissionsGranted.data) {
          return;
        }
      }

      final calendarsResult = await _deviceCalendarPlugin.retrieveCalendars();
      setState(() {
        _calendars = calendarsResult?.data;
      });
    } catch (e) {
      print(e);
    }
  }
}

