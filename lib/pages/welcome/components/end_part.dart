// ignore_for_file: prefer_const_constructors

import 'package:book_store/appColors/app_colors.dart';
import 'package:book_store/pages/login/login_page.dart';
import 'package:book_store/pages/signup/signup_page.dart';
import 'package:book_store/route/routing_page.dart';
import 'package:book_store/widgets/my_button.dart';
import 'package:flutter/material.dart';

class EndPart extends StatelessWidget {
  const EndPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyButton(
          onPressed: () {
            RoutingPage.goTonext(
              context: context,
              navigateTo: LoginPage(),
            );
          },
          text: "LOG IN",
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            RoutingPage.goTonext(
              context: context,
              navigateTo: SignupPage(),
            );
          },
          child: Text(
            "SIGNUP",
            style: TextStyle(
              color: AppColors.greyColor,
            ),
          ),
        )
      ],
    );
  }
}
