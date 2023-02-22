// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: stopWatchApp(),
    );
  }
}

class stopWatchApp extends StatefulWidget {
  const stopWatchApp({super.key});

  @override
  State<stopWatchApp> createState() => _stopWatchAppState();
}

class _stopWatchAppState extends State<stopWatchApp> {
  Timer? repeatedfunction;
  Duration duration = Duration(seconds: 0);
  starttimer() {
    repeatedfunction = Timer.periodic(Duration(milliseconds: 1), (qqqq) {
      setState(() {
        int newSeconds = duration.inSeconds + 1;
        duration = Duration(seconds: newSeconds);
      });
    });
    bool isRunning = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      duration.inHours.toString().padLeft(2, "0"),
                      style: TextStyle(
                        fontSize: 77,
                      ),
                    ),
                  ),
                  Text(
                    "Hours ",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      duration.inMinutes
                          .remainder(60)
                          .toString()
                          .padLeft(2, "0"),
                      style: TextStyle(
                        fontSize: 77,
                      ),
                    ),
                  ),
                  Text(
                    "minutes  ",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      duration.inSeconds.toString().padLeft(2, "0"),
                      style: TextStyle(
                        fontSize: 77,
                      ),
                    ),
                  ),
                  Text(
                    "seconds  ",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 55,
          ),
          ElevatedButton(
            onPressed: () {
              starttimer();
            },
            child: Text(
              "start timer",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 25, 120, 197)),
              padding: MaterialStateProperty.all(EdgeInsets.all(14)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  starttimer();
                },
                child: Text(
                  "start timer",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 25, 120, 197)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9))),
                ),
              ),
              SizedBox(
                width: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  starttimer();
                },
                child: Text(
                  "cancle",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 25, 120, 197)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
