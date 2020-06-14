import 'package:flutter/material.dart';

void main() {
  runApp(ControlSecurity());
}

class ControlSecurity extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

//create container widgets here:
Widget _buildTopTransition(){
  return SizedBox.expand(
    child: Container(
      color: Colors.black,
      child: Image(
        image: AssetImage('assets/images/cs-green.png'),
      ),
    ),
    /* color: Colors.black,
    child: Image.asset("assets/images/cs-green.png"), */

    //green logo goes here
  );
}
Widget _buildBottomTransition(){
  return Container(
    color: Colors.green[700],
  );
}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            //stack container widgets here bottom to top
            _buildBottomTransition(),
            _buildTopTransition(),
          ],
        ),
      )
    );
  }
}
