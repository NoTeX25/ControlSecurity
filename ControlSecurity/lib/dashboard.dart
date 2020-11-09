import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  StaggeredTile.fit(5),
  StaggeredTile.fit(2),
  StaggeredTile.fit(2),
  StaggeredTile.fit(5),

];


List<Widget> _tiles = const <Widget>[
  //passing icon, icon text, custom color, navigation page
  const MyItems(Icons.graphic_eq, "NEWS", 0xFF000000, "/newsURL"),
  const MyItems(Icons.graphic_eq, "STIGS", 0xFF000000, "/stigsURL"),
  const MyItems(Icons.graphic_eq, "RMF reference", 0xFF000000, "/rmfURL"),
  const MyItems(Icons.graphic_eq, "Useful Links", 0xFF000000, "/linksURL"),
];

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('')
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _staggeredTiles,
          children: _tiles,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          padding: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}


class MyItems extends StatelessWidget{
  const MyItems(this.icon, this.heading, this.color, this.routeName);

  final int color;
  final IconData icon;
  final String heading;
  final String routeName;

  @override
  Widget build(BuildContext context){
    return Material(
      color: new Color(0xFF388E3C),
      elevation:12.0,
      //shadowColor: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(20.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //text will go here
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  //icon will go here
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        icon: Icon(icon),
                        iconSize: 20.0,
                        color: Colors.green,
                        onPressed: (){
                          Navigator.pushNamed(context, routeName);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



