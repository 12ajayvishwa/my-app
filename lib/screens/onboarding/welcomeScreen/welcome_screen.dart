import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';
import 'package:jb/screens/Signupscreen/login_signup.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ListBody(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Image.asset("image/matrimonial2.png"),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                       Center(child: new Text("Welcome", textAlign: TextAlign.center,
                       style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                       color: kTextColor),)),
                       Center(child: new Text("To", textAlign: TextAlign.right,
                           style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                           color: kTextColor))),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: "J",
                            style: TextStyle(
                                color: jbColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: "a",
                                style: TextStyle(
                                    color: jbColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "i",
                                style: TextStyle(
                                    color: jbColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "n",
                                style: TextStyle(
                                    color: jbColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "Bandhan",
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold))
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                        padding: EdgeInsets.only(left: 60,top: 15,right: 60,bottom: 15),
                        color: jbColor,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSignupScreen()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        textColor:Colors.white,child: Text("Continue",style: TextStyle(fontSize: 18),),

                      ),
                    )
                  ],
                ),

              )
            ],
          )
        ],
      )
    );
  }
}