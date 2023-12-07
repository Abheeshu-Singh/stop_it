// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyMinutes extends StatefulWidget {
  int mins;
  MyMinutes({super.key, required this.mins});

  @override
  State<MyMinutes> createState() => _MyMinutesState();
}

class _MyMinutesState extends State<MyMinutes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Text(
          widget.mins < 10 ? '0${widget.mins}' : widget.mins.toString(),
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
