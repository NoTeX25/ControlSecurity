import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget{


  @override
  State<StatefulWidget> createState(){
    return DashboardState();
  }
}


class DashboardState extends State<Dashboard>{


  Material tileList(IconData icon, String heading, int color){
    return Material(
      color: Colors.green,
      elevation: 14.0,
      shadowColor: Color(0xFFFFFFFF), //change color hex value
      borderRadius: BorderRadius.circular(24.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      heading,
                      style: TextStyle(
                        color: new Color(color),
                        fontSize: 20.0,
                      ),
                    ),
                    Material(
                      color: new Color(color),
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 60.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.black,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0, //spacing between tiles
        mainAxisSpacing: 12.0, //spacing between verticle tiles
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      children: [
        tileList(Icons.graphic_eq,"Test", 0xff000000), //require color hex
        tileList(Icons.graphic_eq,"Test1", 0xff000000),
        tileList(Icons.graphic_eq,"Test2", 0xff000000),
        tileList(Icons.graphic_eq,"Test3", 0xff000000),
        tileList(Icons.graphic_eq,"Test4", 0xff000000),
        tileList(Icons.graphic_eq,"Test5", 0xff000000),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 180.0),
        StaggeredTile.extent(1, 160.0),
        StaggeredTile.extent(1, 160.0),
        StaggeredTile.extent(2, 180.0),
        StaggeredTile.extent(1, 160.0),
        StaggeredTile.extent(1, 160.0),
      ],
      ),
    );
  }

}