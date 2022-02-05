// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final img;
  final name;
  const DetailsPage({
    Key key,
    String this.img,
    String this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity Description"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250, child: Image.asset("images/" + img + ".jpg")),
            (img == "Crunches")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on Your Back with your knees bent and your arms stretched forward.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Then lift your upper body off the floor. Hold for a few seconds and slowly return.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "It primarily works the rectus abdominis muscle and the obliques.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "JumpingJack")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "RussianTwist")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Sit on the floor with your knees bent, feet lifted a little bit and back tilted backwards.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Then hold your hands together and twist from side to side.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "MountainClimber")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Start in the push-up position. Bend your right knee towards your chest and keep your left leg straight, then quickly switch from one leg to to the other.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "This exercise strengthens multiple muscle groups.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "heelTouch")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on the ground with your legs bent and your arms by your sides.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Slightly lift your upper body off the floor and make your hands alternately reach your heels.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "LegRaise")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie down on your back, and put your hands beneath your hips for support. ",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Then lift your legs up until they form a right angle with the floor.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Slowly bring your legs back down and repeat the exercise.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "Plank")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on the floor with your toes and forearms on the ground. Keep your body straight and hold this position as long as you can.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "This exercise strengthens the abdomen, back and shoulders.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "CobraStretch")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie down on your stomach and bend your elbows with your hands beneath your shoulders.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Then push your chest up off the ground as far as possible. Hold this position for seconds.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "CrossoverCrunches")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your back with your knees bent and your hands behind your ears.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Raise and twist your torso so your right elbow moves to meet your left knee. Repeat with the other side.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "sideBridgeLeft")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your right side. Put your right elbow directly under your shoulders and put your left hand on your waist. Place your left leg on your right leg.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Raise your hips upward, hold for 2-4 seconds, then go back to the start position.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Repeat this exercise.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "sideBridgeRight")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lie on your left side. Put your left elbow directly under your shoulders and put your right hand on your waist. Place your right leg on your left leg.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Raise your hips upward, hold for 2-4 seconds, then go back to the start position.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Repeat this exercise.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "buttBridge")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your back with knees bent and feet flat on the floor. Put your arms flat at your sides.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Then lift your butt up and down.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "bicycleCrunches")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on the floor with your hands behind your ears. Raise your knees and close your right elbow toward your left knee, then close your left elbow toward your right knee.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Repeat the exercise.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "vUp")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your back with your arms and legs extended and your legs squeezed together.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Raise your upper body and legs, use your arms to touch your toes, then go bac kto the start position and repeat the exercise.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "SidePlankRight")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your right side with your forearm supporting your body. Hold your body in a straight line.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "This exercise targets the abdominal muscles and obliques.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "SidePlankLeft")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your left side with your forearm supporting your body. Hold your body in a straight line.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "This exercise targets the abdominal muscles and obliques.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "situp")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Lie on your back with your hands behind your ears.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Then lift your upper body off the floor and slowly up to the sitting position. Don't tug your neck when you get up.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Slowly go back to the start position and repeat the exercise.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "If your spine hurts, please change to another workout.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
            (img == "pushup")
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Start in the push-up position. Then go down for a push-up and as you come up, rotate your upper body and extend your right arm upwards.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Repeat the exercise with the other arm. It's a great exercise for the chest, shoulders, arms and core.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
