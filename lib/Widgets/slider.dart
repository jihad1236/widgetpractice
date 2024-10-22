// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, unused_field, prefer_final_fields

import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 0;
  bool _value = false;
  bool _isselected = false;
  bool _ischecked = false;
  RangeValues _rangeValues = const RangeValues(0.1, 0.30);
  RangeLabels? _rangeLabels;

  @override
  void initState() {
    super.initState();
    _rangeLabels =
        RangeLabels(_rangeValues.start.toString(), _rangeValues.end.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              inactiveColor: Colors.white,
              activeColor: Colors.red,
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              }),
          Text("$_sliderValue"),
          Slider.adaptive(
              activeColor: (_sliderValue == 100) ? Colors.green : Colors.red,
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              }),
          SwitchListTile(
              inactiveThumbColor: Colors.blue,
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.white,
              activeColor: Colors.black,
              tileColor: Colors.black12,
              trackOutlineColor: WidgetStatePropertyAll(Colors.white),
              title: Text('Switch me on or off'),
              value: _value,
              onChanged: (bool value) {
                setState(() {
                  _value = value;
                  // Update the switch state
                });
              }),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ChoiceChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                ),
                label: Text("data"),
                onSelected: (value) {
                  setState(() {
                    _isselected = value;
                  });
                },
                selected: _isselected),
          ),
          Checkbox(
              value: _ischecked,
              onChanged: (value) {
                setState(() {
                  _ischecked = value!;
                });
              }),
          RangeSlider(
            values: _rangeValues,
            onChanged: (value) {
              setState(() {
                _rangeValues = value;
              });
            },
            labels: _rangeLabels,
            divisions: 8,
          )
        ],
      ),
    );
  }
}
