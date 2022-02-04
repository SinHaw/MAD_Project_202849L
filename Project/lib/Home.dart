// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Profile.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.directions_car,
                  color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.directions_transit,
                  color: Colors.greenAccent,
                )),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Home'),
          ),
          body: TabBarView(
            children: [
              Profile(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ), //TabBarView
        ), //Scaffold
      ), //DefaultTabController
    );
  }
}
