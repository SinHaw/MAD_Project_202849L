// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/About.dart';
import 'package:flutter_application_1/Activity.dart';
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
            backgroundColor: Colors.amber,
            bottom: TabBar(
              indicatorColor: Colors.pink,
              tabs: [
                Tab(
                  text: "Profile",
                ),
                Tab(
                  text: "Activity",
                ),
                Tab(
                  text: "About Us",
                ),
              ],
            ),
            title: Text('Home'),
          ),
          body: TabBarView(
            children: [
              Profile(),
              Activity(),
              About(),
            ],
          ), //TabBarView
        ), //Scaffold
      ), //DefaultTabController
    );
  }
}
