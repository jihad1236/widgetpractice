// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'updateproduct.dart';

class Todomodel extends StatelessWidget {
  final String Productname;
  final int Price;
  final int Quantity;
  const Todomodel(
      {super.key,
      required this.Productname,
      required this.Price,
      required this.Quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 120,
        width: 100,
        child: Form(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Productname),
              Text(Price.toString()),
              Text(Quantity.toString()),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Updateproduct(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.mode_edit_outline,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ])
            ],
          ),
        )));
  }
}
