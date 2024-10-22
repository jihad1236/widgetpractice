// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Expension extends StatelessWidget {
  const Expension({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTile(
        backgroundColor: Colors.amber,
        title: Text("data"),
        children: [
          ListTile(
            title: Text("data"),
          ),
          ListTile(
            title: Text("data"),
          ),
          ListTile(
            title: Text("data"),
          ),
          ListTile(
            title: Text("data"),
          ),
        ],
      ),
    );
  }
}
