// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Mystepper extends StatefulWidget {
  const Mystepper({super.key});

  @override
  State<Mystepper> createState() => _MystepperState();
}

class _MystepperState extends State<Mystepper> {
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
            currentStep: _currentstep,
            onStepTapped: (int step) {
              setState(() {
                _currentstep = step;
              });
            },
            onStepContinue: () {
              if (_currentstep == 5) {
                setState(() {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Complete")));
                });
              } else {
                setState(() {
                  _currentstep++;
                });
              }
            },
            onStepCancel: () {
              if (_currentstep > 0) {
                setState(() {
                  _currentstep--;
                });
              } else {
                Navigator.pop(context);
              }
            },
            steps: [
              Step(title: Text("Step1"), content: Text("Step1 data")),
              Step(title: Text("Step2"), content: Text("Step2 data")),
              Step(title: Text("Step3"), content: Text("Step3 data")),
              Step(title: Text("Step3"), content: Text("Step3 data")),
              Step(title: Text("Step3"), content: Text("Step3 data")),
              Step(title: Text("Step3"), content: Text("Step3 data")),
            ]),
      ),
    );
  }
}
