// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Alarm extends StatefulWidget {
  Alarm({Key key}) : super(key: key);

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  void initState() {
    super.initState();
  }

  final hourEditingController = new TextEditingController();
  final minEditingController = new TextEditingController();
  final timerEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[100],
                        borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        )),
                    child: TextField(
                      controller: hourEditingController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      ":",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[100],
                        borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        )),
                    child: TextField(
                      controller: minEditingController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("24 Hour Format")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.red, width: 3),
                          color: Colors.black,
                          borderRadius: new BorderRadius.circular(8.0)),
                      child: TextButton(
                        child: Text(
                          'Create Alarm',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          int hour;
                          int min;
                          hour = int.parse(hourEditingController.text);
                          min = int.parse(minEditingController.text);
                          FlutterAlarmClock.createAlarm(hour, min);
                          hourEditingController.clear();
                          minEditingController.clear();
                          Fluttertoast.showToast(msg: "Alarm Created");
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.red, width: 3),
                          color: Colors.black,
                          borderRadius: new BorderRadius.circular(8.0)),
                      child: TextButton(
                        child: Text(
                          'Show Alarm',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          FlutterAlarmClock.showAlarms();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[100],
                        borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        )),
                    child: TextField(
                      controller: timerEditingController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text(
                    "Minutes",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 100,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.red, width: 3),
                          color: Colors.black,
                          borderRadius: new BorderRadius.circular(8.0)),
                      child: TextButton(
                        child: Text(
                          'Create Timer',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          int min;
                          min = int.parse(timerEditingController.text);
                          FlutterAlarmClock.createTimer(min * 60);
                          timerEditingController.clear();
                          Fluttertoast.showToast(msg: "Timer Created");
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.red, width: 3),
                          color: Colors.black,
                          borderRadius: new BorderRadius.circular(8.0)),
                      child: TextButton(
                        child: Text(
                          'Show Timer',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          FlutterAlarmClock.showTimers();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
