// ignore_for_file: prefer_const_constructors, unused_field, unused_local_variable

import 'package:flutter/material.dart';

class Dateandtime extends StatefulWidget {
  const Dateandtime({super.key});

  @override
  State<Dateandtime> createState() => _DateandtimeState();
}

class _DateandtimeState extends State<Dateandtime> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  DateTime _selectedDate = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Time : ${_selectedTime.format(context)}",
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: _selectedTime,
                );
                if (newTime != null) {
                  setState(() {
                    _selectedTime = newTime;
                  });
                }
              },
              child: const Text("Select Time"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Selected Date: ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? newdate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                  if (_selectedDate != newdate) {
                    setState(() {
                      _selectedDate = newdate!;
                    });
                  }
                },
                child: Text("Select Date"))
          ],
        ),
      ),
    );
  }
}

