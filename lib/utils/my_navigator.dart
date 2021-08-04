import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/screens/onboarding/welcomeScreen/welcome_screen.dart';

class MyNavigator {
  static void gotoWelcome(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}