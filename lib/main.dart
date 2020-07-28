import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  CalendarController _controller;

  @override
  void initState(){
    super.initState();
    _controller =   CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Table Calendar"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(calendarController: _controller,),


          ],
        ),

        ),

    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      animatedIconTheme: IconThemeData(size: 22.0),
      backgroundColor: Colors.pinkAccent,
      // child: Icon(Icons.add),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: true,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0,
      children: [
        SpeedDialChild(
          child: Icon(Icons.group, color: Colors.white,key: UniqueKey(),),

          backgroundColor: Colors.pinkAccent,
          onTap: () => print('General Task'),
          label: 'General Task',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.white,
        ),
        SpeedDialChild(
          child: Icon(Icons.person, color: Colors.white),
          backgroundColor: Colors.pinkAccent,
          onTap: () => print('private task'),
          label: 'Private Task',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.white,
        ),

      ],
    );
  }
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

        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[


              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey[900],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Icons.calendar_today,
                  color: Colors.pinkAccent,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                  },
              ),


            ],
          ),
        ),
        floatingActionButton: buildSpeedDial(),
      ),
    );
  }
}




