import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';

import '../completeProfile1.dart';
import 'registration2.dart';

class registration1 extends StatefulWidget {
  @override
  _registration1State createState() => _registration1State();
}

class _registration1State extends State<registration1> {
  String _myActivity;
  String _myGender;
  String _myGenderResult;
  String _myActivityResult;
  String _Religion;
  String _ReligionResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
    _myGender = '';
    _myGenderResult = '';
    _Religion = '';
    _ReligionResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
        _myGenderResult = _myGender;
        _ReligionResult = _Religion;
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
              style: TextStyle(fontSize: 15,color: Colors.blue),))
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
                      "Let's set up your account,\n while we find Matches for you!",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF2661FA),
                          fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(16),
                            child: DropDownFormField(
                              titleText: 'Profile for',
                              hintText: 'Select',
                              value: _myActivity,
                              onSaved: (value) {
                                setState(() {
                                  _myActivity = value;
                                });
                              },
                              onChanged: (value) {
                                setState(() {
                                  _myActivity = value;
                                });
                              },
                              dataSource: [
                                {
                                  "display": "Select",
                                  "value": "Select",
                                },
                                {
                                  "display": "Self",
                                  "value": "Self",
                                },
                                {
                                  "display": "Son",
                                  "value": "Son",
                                },
                                {
                                  "display": "Daughter",
                                  "value": "Daughter",
                                },
                                {
                                  "display": "Brother",
                                  "value": "Brother",
                                },
                                {
                                  "display": "Sister",
                                  "value": "Sister",
                                },
                                {
                                  "display": "Friend",
                                  "value": "Friend",
                                },
                                {
                                  "display": "Relative",
                                  "value": "Relative",
                                },
                              ],
                              textField: 'display',
                              valueField: 'value',
                            ),
                          ),
                          Container(padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Candidate's first name",
                                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                                  labelText: "Candidate's first name",
                                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                  filled: true),
                              obscureText: false,
                              maxLength: 20,
                            ),
                          ),
                          Container(padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Candidate's last name",
                                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                                  labelText: "Candidate's last name",
                                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                  filled: true),
                              obscureText: false,
                              maxLength: 20,
                            ),
                          ),
                          Container(padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Name of creater",
                                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                                  labelText: "Profile creater",
                                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                  filled: true),
                              obscureText: false,
                              maxLength: 20,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: DropDownFormField(
                              titleText: 'Gender',
                              hintText: 'Select',
                              value: _myGender,
                              onSaved: (value) {
                                setState(() {
                                  _myGender = value;
                                });
                              },
                              onChanged: (value) {
                                setState(() {
                                  _myGender = value;
                                });
                              },
                              dataSource: [
                                {
                                  "display": "Select",
                                  "value": "Select",
                                },
                                {
                                  "display": "Male",
                                  "value": "Male",
                                },
                                {
                                  "display": "Female",
                                  "value": "Female",
                                },
                              ],
                              textField: 'display',
                              valueField: 'value',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: DropDownFormField(
                              titleText: 'Religion',
                              hintText: 'Select',
                              value: _Religion,
                              onSaved: (value) {
                                setState(() {
                                  _Religion = value;
                                });
                              },
                              onChanged: (value) {
                                setState(() {
                                  _Religion = value;
                                });
                              },
                              dataSource: [
                                {
                                  "display": "Select",
                                  "value": "Select",
                                },
                                {
                                  "display": "Jain",
                                  "value": "Jain",
                                },
                                {
                                  "display": "Digambar",
                                  "value": "Digambar",
                                },
                                {
                                  "display": "Shwetambar",
                                  "value": "Shwetambar",
                                },
                              ],
                              textField: 'display',
                              valueField: 'value',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5, right: 20),
                            alignment: Alignment.topRight,
                            child: Text(
                              "All field are mandatory",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: RaisedButton(
                              color: jbColor,
                              child: Text('Create Account',
                              style: TextStyle(
                                color: Colors.white
                              ),),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  completeProfile1()));
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