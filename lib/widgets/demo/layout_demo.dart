import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  final Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red[500]),
        Text("41"),
      ],
    ),
  );

  final Widget textSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: new Text(
      '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
      ''',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.phone, "CALL"),
          buildButtonColumn(Icons.near_me, "ROUTE"),
          buildButtonColumn(Icons.share, "SHARE"),
        ],
      ),
    );

    return new MaterialApp(
      title: "Demo",
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Top Lakes"),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              "images/lake.jpg",
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
