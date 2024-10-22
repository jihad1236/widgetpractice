// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Visibility1 extends StatefulWidget {
  const Visibility1({super.key});

  @override
  State<Visibility1> createState() => _Visibility1State();
}

class _Visibility1State extends State<Visibility1> {
  bool ischecked = true;
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Checkbox(
              value: isvisible,
              onChanged: (value) {
                setState(() {
                  isvisible = value!;
                });
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.amber,
            ),
            Visibility(
              visible: isvisible,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 7, 57, 255),
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.amber,
            ),
            ElevatedButton(
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber("+8801872879821");
                },
                child: Text("Call"))
          ],
        ),
      ),
    );
  }
}
