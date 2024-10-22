// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class popup extends StatefulWidget {
  const popup({super.key});

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  String title1 = "Homepage";
  final String title = 'Homepage';
  final String firstpage = '1stpage';
  final String secondpage = '2ndpage';
  final String thirdpage = '3rdpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          title1,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.amber,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Home page"),
                value: title,
              ),
              PopupMenuItem(
                child: Text("1st page"),
                value: firstpage,
              ),
              PopupMenuItem(
                child: Text("2nd page"),
                value: secondpage,
              ),
              PopupMenuItem(
                child: Text("3rd page"),
                value: thirdpage,
              ),
            ],
            onSelected: (String newvalue) {
              setState(() {
                title1 = newvalue;
              });
            },
          )
        ],
      ),
    );
  }
}
