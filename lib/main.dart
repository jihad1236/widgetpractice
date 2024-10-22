// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Uidesign/todoscreen.dart';

// Assuming this is the correct path

void main() => runApp(const MyApp()); // Fix: Change MyApp to SearchFilterApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Search Filter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Todoscreen()

        // Assuming SearchFilterPage is implemented in searchfilter.dart
        );
  }
}
