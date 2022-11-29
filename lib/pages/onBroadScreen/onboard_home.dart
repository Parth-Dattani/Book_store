// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, camel_case_types

import 'package:book_store/pages/login/login_page.dart';
import 'package:book_store/pages/onBroadScreen/onboard_screen.dart';
import 'package:book_store/pages/signup/signup_page.dart';
import 'package:flutter/material.dart';

class OnBoard_HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        ////
        child: Stack(
          children: [
            Column(
              children: [
                // Positioned(
                //   right: 0.0,
                //   top: 10.0,
                //   child: FlatButton(
                //     child: Text(
                //       'skip',
                //       style: TextStyle(color: Colors.redAccent, fontSize: 20),
                //     ),
                //     onPressed: () {},
                //   ),
                // ),
                Expanded(
                  child: OnBoardScreen(),
                ),
                SizedBox(
                  height: 20,
                ),

                TextButton(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have a Account ? ',
                      style: TextStyle(color: Colors.grey),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage())),
                ),
                Positioned(
                  right: 0.0,
                  top: 10.0,
                  child: TextButton(
                    child: Text(
                      'skip',
                      style: TextStyle(color: Colors.redAccent, fontSize: 20,backgroundColor: Colors.transparent),
                    ),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignupPage())),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
