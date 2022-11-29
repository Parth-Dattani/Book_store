// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:book_store/Admin/admin_home_screen.dart';
import 'package:book_store/pages/home/home_page.dart';
import 'package:book_store/route/routing_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:tasteefood/pages/home/home_page.dart';
//import 'package:tasteefood/route/routing_page.dart';

class LoginAuthProvider with ChangeNotifier {
  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(LoginAuthProvider.pattern.toString());

  bool loading = false;

  UserCredential? userCredential;

  void loginPageVaidation(
      {
        required TextEditingController? emailAdress,
      required TextEditingController? password,
      required BuildContext context
      }) async {
    if (emailAdress!.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Email address is empty"),
        ),
      );
      return;
    }
    else if (!regExp.hasMatch(emailAdress.text.trim())) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid email address"),
        ),
      );
      return;
    }
    else if (password!.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password is empty"),
        ),
      );
      return;
    } else if (password.text.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password must be 8"),
        ),
      );
      return;
    } else if (emailAdress.text == "parth@gmail.com" &&
        password.text == "parth@123") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => adminHomeScreen()));
    } else {
      try {
        loading = true;
        notifyListeners();
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAdress.text,
          password: password.text,
        )
            .then(
          (value) async {
            loading = false;
            notifyListeners();
            await RoutingPage.goTonext(
              context: context,
              navigateTo: HomePage(),
            );
          },
        );
        notifyListeners();
      } on FirebaseAuthException catch (e) {
        loading = false;
        notifyListeners();
        if (e.code == "user-not-found") {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("user-not-found"),
            ),
          );
        } else if (e.code == "wrong-password") {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("wrong-password"),
            ),
          );
        }
      }
    }
  }
}
