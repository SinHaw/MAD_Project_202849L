// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'DetailsPage.dart';
// ignore_for_file: prefer_const_constructors

void main() => runApp(Beginner());

class Beginner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Beginner",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              // passing this to our root
              Navigator.of(context).pop();
            },
          ),
        ),
        body: MyCustomWidget(),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  final List<String> img = <String>[
    'JumpingJack',
    'Crunches',
    'RussianTwist',
    'MountainClimber',
    'heelTouch',
    'LegRaise',
    'Plank',
    'Crunches',
    'RussianTwist',
    'MountainClimber',
    'heelTouch',
    'LegRaise',
    'Plank',
    'CobraStretch'
  ];
  final List<String> name = <String>[
    'JUMPING JACKS',
    'ABDOMINAL CRUNCHES',
    'RUSSIAN TWIST ',
    'MOUNTAIN CLIMBER',
    'HEEL TOUCH',
    'LEG RAISES',
    'PLANK',
    'ABDOMINAL CRUNCHES',
    'RUSSIAN TWIST',
    'MOUNTAIN CLIMBER',
    'HEEL TOUCH',
    'LEG RAISES',
    'PLANK',
    'COBRA STRETCH',
  ];
  final List<String> amount = <String>[
    '00:20',
    'x16',
    'x16',
    'x20',
    'x20',
    'x16',
    '00:20',
    'x12',
    'x32',
    'x12',
    'x20',
    'x14',
    '00:30',
    '00:30'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: img.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        img: img[index],
                        name: name[index],
                      )));
            },
            child: Container(
                height: 100,
                child: Align(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 160,
                          child: Image.asset(
                            "images/" + img[index] + ".jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' ${name[index]}',
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '${amount[index]}',
                                    textAlign: TextAlign.left,
                                  ),
                                ])
                          ],
                        ),
                        Spacer(),
                        IconButton(icon: Icon(Icons.arrow_right))
                      ]),
                )),
          ),
        );
      },
    );
  }
}
