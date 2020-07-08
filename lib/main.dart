import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime x = DateTime.now();
  @override
  Widget build(BuildContext context) {

    String month = x.month.toString();
    String weekday = x.weekday.toString();
    int day = x.day.toInt();
    switch (month) {
      case "1":
        {
          month = "January";
          break;
        }
      case "2":
        {
          month = "February";
          break;
        }
      case "3":
        {
          month = "March";
          break;
        }
      case "4":
        {
          month = "April";
          break;
        }
      case "5":
        {
          month = "May";
          break;
        }
      case "6":
        {
          month = "June";
          break;
        }
      case "7":
        {
          month = "July";
          break;
        }
      case "8":
        {
          month = "August";
          break;
        }
      case "9":
        {
          month = "September";
          break;
        }
      case "10":
        {
          month = "October";
          break;
        }
      case "11":
        {
          month = "November";
          break;
        }
      case "12":
        {
          month = "December";
          break;
        }
    }
    switch (weekday) {
      case "1":
        {
          weekday = "Monday";
          break;
        }
      case "2":
        {
          weekday = "Tuesday";
          break;
        }
      case "3":
        {
          weekday = "Wednesday";
          break;
        }
      case "4":
        {
          weekday = "Thursday";
          break;
        }
      case "5":
        {
          weekday = "Friday";
          break;
        }
      case "6":
        {
          weekday = "Saturday";
          break;
        }
      case "7":
        {
          weekday = "Sunday";
          break;
        }
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: false,
          title: Text(
            month + ' ' + '$day' + '\n' + weekday,
            style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
          ),
          actions: <Widget>[

          ],
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
                child: Text('No Plans for Today',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('😀 ',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'EmojiOne',
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey[900],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                  size: 35.0,
                ),
                onPressed: () {
                  x = DateTime.now();
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.pinkAccent,
                  size: 35.0,
                ),
                onPressed: () {
                  x = x.add(Duration  (days:-1,hours:0,minutes:0));
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.pinkAccent,
                  size: 35.0,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.pinkAccent,
                  size: 35.0,
                ),
                onPressed: () {
                  x = x.add(Duration  (days:1,hours:0,minutes:0));
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.pinkAccent,
                  size: 35.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}



