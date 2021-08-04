import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jb/screens/Normal&Standardpage/Normal&Standard.dart';
import 'package:jb/screens/paymentGateway.dart';
import 'package:jb/screens/splashscreen/splashScreen.dart';

import 'components/animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme:
            GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)),
        home: SplashScreen());
  }
}
