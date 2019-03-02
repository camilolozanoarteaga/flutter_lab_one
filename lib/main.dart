import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double iconSize = 40.0;
    final double fontSize = 30.0;
    final TextStyle textStyle = new TextStyle(
      color: Colors.black12,
      fontSize: fontSize
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless widget"),
      ),
      body: new Container(
        child: Center (
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text("I LOVE FLUTTER", style: textStyle),
                icon: new Icon(Icons.favorite, size: iconSize, color: Colors.red)
              ),
              new MyCard(
                  title: new Text("I LIKE THIS VIDEO", style: textStyle),
                  icon: new Icon(Icons.thumb_up, size: iconSize, color: Colors.blue)
              ),
              new MyCard(
                  title: new Text("NEXT VIDEO", style: textStyle),
                  icon: new Icon(Icons.queue_play_next, size: iconSize, color: Colors.deepPurple)
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {

  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
            padding: const EdgeInsets.all(
              20.0
            ),
            child: new Column(
              children: <Widget>[this.title, this.icon],
            )
        )
      ),
    );
  }
}