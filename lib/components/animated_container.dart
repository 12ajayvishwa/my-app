import 'package:flutter/material.dart';
import 'package:jb/config/size_config.dart';
import 'package:jb/constants/color.dart';
import 'package:simple_animations/simple_animations.dart';

class MyAnimatedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      tween: Tween(
        begin: 0.0,
        end: SizeConfig.orientation == Orientation.portrait
            ? SizeConfig.screenHeight
            : SizeConfig.screenWidth,
      ),
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
      builder: (context, child, value) {
        return Container(
          width: value,
          height: value,
          decoration: BoxDecoration(
              color: kLightOrangeColor,
              image: DecorationImage(
            image: AssetImage("image/matrimonial2.png"))),
        );
      },
    );
  }
}