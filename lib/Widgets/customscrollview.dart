// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Customview extends StatelessWidget {
  const Customview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 400,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text("data"),
              floating: false,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("my bar"),
                centerTitle: true,
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                height: 30,
                width: 30,
                color: Colors.black,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.black,
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
