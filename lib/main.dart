import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: false,
          title: Text(
            'Today, July 4\nSaturday',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

        ),
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Text(
                  '\n\n\n\n\n\n\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Center(
                  child: Text(
                      'No Plans for Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
                Text(
                    '😀 ',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'EmojiOne',
                    )
                ),

              ],
            ),

        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey[900],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.bookmark,
              color: Colors.pinkAccent,
              size: 35.0,),
                onPressed: () {},),
              IconButton(icon: Icon(Icons.chevron_left,
                color: Colors.pinkAccent,
                size: 35.0,
                ),
                onPressed: () {},),
              IconButton(icon: Icon(Icons.calendar_today,
                color: Colors.pinkAccent,
                size: 35.0,),
                onPressed: () {},),
              IconButton(icon: Icon(Icons.chevron_right,
                color: Colors.pinkAccent,
              size: 35.0,),
                onPressed: () {},),
              IconButton(icon: Icon(Icons.add_circle,
                color: Colors.pinkAccent,
              size: 35.0,),
                onPressed: () {},),
            ],
          ),
        ),
      ),
    );
  }
}



