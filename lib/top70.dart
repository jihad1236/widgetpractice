// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetpractice/signuppage.dart';

class Top701 extends StatefulWidget {
  const Top701({super.key});

  @override
  State<Top701> createState() => _Top701State();
}

class _Top701State extends State<Top701> {
  bool? value1 = false;
  final List<String> items = ["apple", "mango", "Banana", "Grapes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("data"),
              );
            }),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("My Top 70 Widgets "),
      ),
      body: Column(
        children: <Widget>[
          //bottom Sheet
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("data")));
                    showBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 400,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancel")),
                          );
                        });
                  },
                  child: Text(
                    "Bottom sheet",
                  ))),
          Center(
            child: CheckboxListTile(
                value: value1,
                title: Text("Condition and requirements"),
                subtitle: Text("Accept or Not "),
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (value) {
                  setState(() {
                    value1 = value;
                  });
                }),
          ),
          Container(
            height: 60,
            child: Center(
              child: CupertinoContextMenu(
                  actions: [
                    CupertinoContextMenuAction(
                        onPressed: () => Navigator.pop(context),
                        child: Text("data")),
                    CupertinoContextMenuAction(
                        onPressed: () => Navigator.pop(context),
                        child: Text("data")),
                  ],
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png")),
            ),
          ),
          Center(
            child: Builder(builder: (BuildContext context) {
              return ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Text("data"));
            }),
          ),

          Autocomplete(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return Iterable<String>.empty();
              }

              return items.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
              });
            },
          ),
          SizedBox(
            height: 20,
          ),

          CupertinoButton(
              color: Colors.green,
              child: Text("Signup Here..."),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              })
        ],
      ),
    );
  }
}
