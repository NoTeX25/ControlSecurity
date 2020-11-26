import 'package:flutter/material.dart';
class ConmonTracking extends StatefulWidget{
  

  @override
  State<StatefulWidget> createState(){
    return ConmonTrackingState();
  }
}


class ConmonTrackingState extends State<ConmonTracking>{


List<String> _conMonItems = [];

  // This will be called each time the + button is pressed
  void _addConMonItem() {
    // Putting our code inside "setState" tells the app that our state has changed, and
    // it will automatically re-render the list
    setState(() {
      int index = _conMonItems.length;
      _conMonItems.add('Item ' + index.toString());
    });
  }

  // Build the whole list of todo items
  Widget _buildConMonList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        // itemBuilder will be automatically be called as many times as it takes for the
        // list to fill up its available space, which is most likely more than the
        // number of todo items we have. So, we need to check the index is OK.
        if(index < _conMonItems.length) {
          return _buildTodoItem(_conMonItems[index]);
        }
      },
    );
  }


Widget _buildTodoItem(String conMonText) {
    return new ListTile(
      title: new Text(conMonText)
    );
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ConMon Tasks')
      ),
      body: _buildConMonList(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _addConMonItem,
        backgroundColor: Colors.green,
        tooltip: 'Add task',
        child: new Icon(Icons.add, color: Colors.black,)
      ),
    );
  }
}