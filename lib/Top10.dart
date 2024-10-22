// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';

class Top70 extends StatefulWidget {
  const Top70({super.key});

  @override
  State<Top70> createState() => _Top70State();
}

class _Top70State extends State<Top70> {
  final List<int> _items = List<int>.generate(70, (int index) => index);
  final List<int> mylist = List<int>.generate(80, (int index) => index);

  final List<Color> _colors = List.generate(
      70,
      (index) => Color.fromRGBO(
          (index * 3) % 256, (index * 7) % 256, (index * 11) % 256, 1.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Top 70"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                          leading: Icon(Icons.subscriptions_rounded),
                          content: Text("Subsscribd!"),
                          actions: [
                        TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentMaterialBanner();
                            },
                            child: Text("Hide"))
                      ]));
                },
                child: Text("Subsscribe?")),
          ),
          Expanded(
            child: ReorderableListView(
              children: List.generate(
                _items.length,
                (index) {
                  int item = _items[index];
                  return Card(
                    key: Key('$index'),
                    child: ListTile(
                      title: Text('Item #$item'),
                    ),
                  );
                },
              ),
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex--;
                  }
                  final int item = _items.removeAt(oldIndex);
                  _items.insert(newIndex, item);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
