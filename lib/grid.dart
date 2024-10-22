// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
          child: GridTile(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: GridTileBar(
            title: Text("data"),
            subtitle: Text("data"),
            backgroundColor: Colors.amber,
          ),
        ),
      )),
    );
  }
}
