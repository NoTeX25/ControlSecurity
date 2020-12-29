import 'package:flutter/material.dart';
import './bottomNav.dart';



class ConmonTracking extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return ConmonTrackingState();
  }
}


class ConmonTrackingState extends State<ConmonTracking>{


List<String> _conMonItems = [];

  // This will be called each time the + button is pressed
  void _addConMonItem(String task) {
    if(task.length > 0){
      setState(() => _conMonItems.add(task));
    }
  }

  void _removeConMonItem(int index){
    setState(() => _conMonItems.removeAt(index));
  }

  void _promptRemoveConMonItem(int index){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return new AlertDialog(
          //lookup how to customize dialog box....
          title: new Text('Mark "${_conMonItems[index]}" as completed?',
          //add text style here
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('CANCEL'
              //add text style here
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            new FlatButton(
              child: new Text('MARK AS DONE',
              //add text style here:
              ),
              onPressed: (){
                _removeConMonItem(index);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

Widget _buildConMonList() {
  return new ListView.builder(
    // ignore: missing_return
    itemBuilder: (context, index){
      if(index < _conMonItems.length) {
        return _buildConMonItem(_conMonItems[index], index);
      }
    },
  );
}


Widget _buildConMonItem(String conMonText, int index) {
  return new ListTile(
    title: new Text(conMonText),
    onTap: () => _promptRemoveConMonItem(index),
  );
}

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
          ),
        ),
      ),
      body: _buildConMonList(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _pushAddConMonScreen,
        backgroundColor: Colors.green,
        tooltip: 'Add task',
        child: new Icon(Icons.add, color: Colors.black,)
      ),
    );
  }

  void _pushAddConMonScreen(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          return new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.green,
              title: new Text('Add a new Task', style: TextStyle(
                color: Colors.black
              ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20)
                )
              ),
            ),
            body: new TextField(
              autofocus: true,
              onSubmitted: (val){
                _addConMonItem(val);
                Navigator.pop(context); //will close the add task screen
              },
              decoration: new InputDecoration(
                hintText: 'Enter ConMon to track: ',
                contentPadding: const EdgeInsets.all(16.0)
              ),
            ),
          );
        }
      ),
    );
  }
}