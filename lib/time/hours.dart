// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHours extends StatefulWidget {
  int hours;
  // ignore: use_key_in_widget_constructors
  MyHours({required this.hours});

  @override
  State<MyHours> createState() => _MyHoursState();
}

class _MyHoursState extends State<MyHours> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Text(
          widget.hours.toString(),
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
