import 'package:ControlSecurity/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  //final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  //Hive.init(appDocumentDir.path); 
  runApp(ControlSecurity());
}

class ControlSecurity extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      initialRoute: './',
      routes:{
        //additional tile pages will be listed below
        "/newsURL": (context) => _nvdURL(),
        "/stigsURL": (context) => _stigsURL(),
        "/rmfURL": (context) => _rmfURL(),
        "/linksURL": (context) => _linksURL(),
      },
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

//controllers will be stored here
PageController _controller = PageController(
  initialPage: 0,
  );



//create container widgets here:
Widget _buildTopTransition(){
  return SizedBox.expand(
    child: Container(
      color: Colors.black,
      child: Image(
        image: AssetImage('assets/images/cs-green.png'),
      ),
    ),
  );
}



  @override
  //dispose of the controller state with onDispose()
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  

  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        /* child: Stack(
          children: <Widget>[
            //stack container widgets here bottom to top
            _buildBottomTransition(),
            _buildTopTransition(),
          ],
        ), */
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: [
            _buildTopTransition(),
            BottomNav(),
          ]
        ),
        
      )
    );
  }
}


//url navigation listed below:
Widget _nvdURL(){
  return WebView(
    initialUrl: 'https://www.cio.com/category/security/' //create new tile to replace nvd 800-53 link
  );
}
Widget _stigsURL(){
  return WebView(
    initialUrl: '#' //create new tile to replace nvd 800-53 link
  );
}
Widget _rmfURL(){
  return WebView(
    initialUrl: '#' //create new tile to replace nvd 800-53 link
  );
}
Widget _linksURL(){
  return WebView(
    initialUrl: '#' //create new tile to replace nvd 800-53 link
  );
}