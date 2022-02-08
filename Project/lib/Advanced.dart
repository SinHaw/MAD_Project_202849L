// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'DetailsPage.dart';
// ignore_for_file: prefer_const_constructors

void main() => runApp(Advanced());

class Advanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Advanced",
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
    'situp',
    'sideBridgeLeft',
    'sideBridgeRight',
    'Crunches',
    'bicycleCrunches',
    'SidePlankRight',
    'SidePlankLeft',
    'vUp',
    'pushup',
    'RussianTwist',
    'Crunches',
    'buttBridge',
    'heelTouch',
    'MountainClimber',
    'CrossoverCrunches',
    'vUp',
    'Plank',
    'CobraStretch'
  ];
  final List<String> name = <String>[
    'JUMPING JACKS',
    'SIT UPS',
    'SIDE BRIDGES LEFT',
    'SIDE BRIDGES RIGHT',
    'ABDOMINAL CRUNCHES',
    'BICYCLE CRUNCHES',
    'SIDE PLANK RIGHT',
    'SIDE PLANK LEFT',
    'V-UP',
    'PUSHUP AND ROTATION',
    'RUSSIAN TWIST',
    'ABDOMINAL CRUNCHES',
    'BUTT BRIDG',
    'HEEL TOUCH',
    'MOUNTAIN CLIMBER',
    'CROSSOVER CRUNCHES',
    'V-UP',
    'PLANK',
    'COBRA STRETCH'
  ];
  final List<String> amount = <String>[
    '00:30',
    'x20',
    'x20',
    'x20',
    'x30',
    'x24',
    '00:20',
    '00:20',
    'x18',
    'x24',
    'x48',
    'x28',
    'x30',
    'x34',
    'x30',
    'x24',
    'x16',
    '01:00',
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
                                  Text(' ${name[index]}'),
                                  Text('${amount[index]}'),
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
