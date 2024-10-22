// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Pageview1 extends StatelessWidget {
  const Pageview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.amber,
            child: Text("data"),
          ),
          Container(
            color: Colors.green,
            child: Text("data"),
          ),
          Container(
            color: Colors.blue,
            child: Text("data"),
          ),
          Container(
            color: Colors.red,
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}
