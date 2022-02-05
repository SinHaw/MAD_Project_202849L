// ignore_for_file: annotate_overrides, avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'Beginner.dart';

class Activity extends StatelessWidget {
  const Activity({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          Card(
            child: ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('Beginner'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beginner()));
              },
            ),
          ),
          Card(
            child: ListTile(
                leading: Icon(Icons.accessibility_new_outlined),
                title: Text('Intermediate'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Beginner()));
                }),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.accessibility_sharp),
              title: Text('Advanced'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beginner()));
              },
            ),
          ), // ListTitle
        ], // <Widget>[]
      ).toList(),
    )
        // ListView
        );
  }
}
