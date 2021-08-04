import 'package:flutter/material.dart';
import 'package:jb/config/size_config.dart';
import 'package:jb/constants/color.dart';
import 'package:jb/screens/Signupscreen/login_signup.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSignupScreen()));
            },
            child: Text(
              'Skip',
              style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 1.4, //14
                  color: kDefaultAppColor,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}