// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stop_it/divider.dart';
import 'package:stop_it/time/hours.dart';
import 'package:stop_it/time/minutes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool vswitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STOP IT"),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 0.6,
                    physics: FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 13,
                      builder: (context, index) {
                        return MyHours(
                          hours: index,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 0.6,
                    physics: FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (context, index) {
                        return MyMinutes(
                          mins: index,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "hr",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vibration",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                      value: vswitch,
                      onChanged: (value) {
                        setState(() {
                          vswitch = value;
                        });
                      })
                ],
              ),
            ),
          ),
          divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sound",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("default"),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Snooze duration",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text("y/n"),
                ],
              ),
            ),
          ),
          divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Repeat",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text("y/n"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
