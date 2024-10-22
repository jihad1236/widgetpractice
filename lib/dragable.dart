// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class Dragg extends StatefulWidget {
  const Dragg({super.key});

  @override
  State<Dragg> createState() => _DraggState();
}

class _DraggState extends State<Dragg> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                if (value == "data") {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Done")));
                }
              },
              color: Colors.amber,
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "data",
                      child: Text("dat1"),
                    ),
                    PopupMenuItem(
                      child: Text("data"),
                    ),
                    PopupMenuItem(
                      value: "data",
                      child: Text("data"),
                    ),
                  ])
        ],
      ),
      body: Column(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: ischecked,
              onChanged: (value) {
                setState(() {
                  ischecked = value!;
                });
              }),
          Center(
            child: Draggable(
              child: Container(
                height: 200,
                width: 200,
                color: ischecked ? Colors.amber : Colors.red,
              ),
              feedback: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DragTarget(builder: (context, candidateData, rejectedData) {
            return Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            );
          }),
        ],
      ),
    );
  }
}
