import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

// get the current time
  TimeOfDay time = new TimeOfDay.now();

// time picker
  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay pickedTime =
        await showTimePicker(context: context, initialTime: time);
    if (pickedTime != null && pickedTime != time) {
      setState(() {
        time = pickedTime;
      });
    }
  }

  // parse int to TimeOfDay
  TimeOfDay intToTimeOfDay(int time) {
    DateTime dateTime = new DateTime.fromMicrosecondsSinceEpoch(time * 1000);
    TimeOfDay timeOfDay =
        new TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
    return timeOfDay;
  }

// parse TimeOfDay to String
  String timeOfDayToString(TimeOfDay time) {
    DateTime now = new DateTime.now();
    DateTime date =
        new DateTime(now.year, now.month, now.day, time.hour, time.minute);
    final f = new DateFormat.jm();
    return f.format(date);
  }

// parse TimeOfDay to String
  int timeOfDayToInt(TimeOfDay time) {
    DateTime now = new DateTime.now();
    DateTime date =
        new DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return date.millisecondsSinceEpoch;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker Demo"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('Time Picker'),
            onPressed: () {
              _selectTime(context);
            },
          ),
          Divider(),
          Text('TimeOfDay: '),
          Text('${time.toString()}'),
          Divider(),
          Text('timeOfDayToString: '),
          Text('${timeOfDayToString(time)}'),
          Divider(),
          Text('timeOfDayToInt: '),
          Text('${timeOfDayToInt(time)}'),
          Divider(),
          Text('intToTimeOfDay: '),
          Text('${intToTimeOfDay(timeOfDayToInt(time))}'),          
        ],
      )),
    );
  }
}
