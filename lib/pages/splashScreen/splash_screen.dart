// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, must_call_super

import 'dart:async';
import 'package:book_store/pages/onBroadScreen/onboard_home.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // super.initState();
    // startTime();
    Timer(
        Duration(seconds: 3,), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoard_HomePage()));
    });
  }

  // startTime() async {
  //   var duration = Duration(seconds: 5);
  //   return Timer(duration, route);
  // }

  // route() {
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => BottomNavBar(0),
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/Logo_2.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "Welcome To Book Store",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
