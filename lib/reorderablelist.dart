// ignore_for_file: prefer_const_constructors, unused_field, sort_child_properties_last, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class Reorderablelist extends StatefulWidget {
  const Reorderablelist({super.key});

  @override
  State<Reorderablelist> createState() => _ReorderablelistState();
}

class _ReorderablelistState extends State<Reorderablelist> {
  //generate a list
  final List<int> _items = List<int>.generate(10, (int index) => index);

  //Reorder full Logic
  void onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex--;
      }
      final int item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ReorderableListView(
          children: List.generate(_items.length, (index) {
            return ListTile(
              key: Key("$index"),
              title: Text('Item ${_items[index]}'),
              trailing: Icon(Icons.drag_handle),
              leading: Icon(Icons.ac_unit),
            );
          }),
          onReorder: onReorder,
        ),
      ),
    );
  }
}
