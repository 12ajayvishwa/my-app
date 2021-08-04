import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';

import 'completeProfile3.dart';

class completeProfile4 extends StatefulWidget {
  @override
  _completeProfile4State createState() => _completeProfile4State();
}

class _completeProfile4State extends State<completeProfile4> {
  String _myWorks;
  String _myWorksResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myWorks = '';
    _myWorksResult = '';

  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myWorksResult = _myWorks;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('image/jainbandhan.png',fit: BoxFit.fill,)],
        ),
        actions: [
          TextButton(
              onPressed: null,
              child: Text("Login",
                style: TextStyle(fontSize: 15,color: jbColor),))
        ],
        backgroundColor:jbColor,

        centerTitle: true,
        elevation: 2,
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                child: Text(
                  "Please add your relatives datails",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF2661FA),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "1.Relative's name",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "1.Relative's name",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Relative mobile number",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Relative mobile number",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Relative's address",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Relative's address",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "2.Relative's name",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "2.Relative's name",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Relative mobile number",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Relative mobile number",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Relative's address",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Relative's address",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: RaisedButton(
                          color: jbColor,
                          child: Text('Continue',
                            style: TextStyle(
                                color: Colors.white
                            ),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  completeProfile3()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
