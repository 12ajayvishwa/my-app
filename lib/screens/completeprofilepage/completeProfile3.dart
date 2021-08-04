import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';
import 'package:jb/screens/Normal&Standardpage/Normal&Standard.dart';
import 'package:jb/screens/completeprofilepage/registration/registration2.dart';
import 'package:jb/screens/uploadAdhar&Photo/uploadAdhar&Photo.dart';

class completeProfile3 extends StatefulWidget {
  @override
  _completeProfile3State createState() => _completeProfile3State();
}

class _completeProfile3State extends State<completeProfile3> {
  String _myMarriedSisters;
  String _myMarriedSistersResult;
  String _myMarriedBrothers;
  String _myMarriedBrothrsResult;
  String _myUnmarriedSisters;
  String _myUnmarriedSistersResult;
  String _myUnmarriedBrothers;
  String _myUnmarriedBrothersResult;

  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myMarriedSisters = '';
    _myMarriedSistersResult = '';
    _myMarriedBrothers = '';
    _myMarriedSistersResult = '';
    _myUnmarriedSisters = '';
    _myUnmarriedSistersResult = '';
    _myUnmarriedBrothers = '';
    _myUnmarriedBrothersResult = '';


  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myMarriedSistersResult = _myMarriedSisters;
        _myMarriedBrothers = _myMarriedBrothers;
        _myUnmarriedSistersResult = _myUnmarriedSisters;
        _myUnmarriedBrothersResult = _myUnmarriedBrothers;

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
                  "Please add your family details!",
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
                              hintText: "Father's name",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Father's name",
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
                              hintText: "Mother's name",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Mother's name",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Father's yearly income",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Father's yearly income",
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
                              hintText: "Parent mobile number",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Parent mobile number",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: "Married brother's",
                          hintText: 'Select',
                          value: _myMarriedBrothers,
                          onSaved: (value) {
                            setState(() {
                              _myMarriedBrothers = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myMarriedBrothers = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "0",
                              "value": "0",
                            },
                            {
                              "display": "1",
                              "value": "1",
                            },
                            {
                              "display": "2",
                              "value": "2",
                            },
                            {
                              "display": "3",
                              "value": "3",
                            },
                            {
                              "display": "4",
                              "value": "4",
                            },
                            {
                              "display": "5",
                              "value": "5",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: "Married Sister's",
                          hintText: 'Select',
                          value: _myMarriedSisters,
                          onSaved: (value) {
                            setState(() {
                              _myMarriedSisters = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myMarriedSisters = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "0",
                              "value": "0",
                            },
                            {
                              "display": "1",
                              "value": "1",
                            },
                            {
                              "display": "2",
                              "value": "2",
                            },
                            {
                              "display": "3",
                              "value": "3",
                            },
                            {
                              "display": "4",
                              "value": "4",
                            },
                            {
                              "display": "5",
                              "value": "5",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: "Unmarried brother's",
                          hintText: 'Select',
                          value: _myUnmarriedBrothers,
                          onSaved: (value) {
                            setState(() {
                              _myUnmarriedBrothers = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myUnmarriedBrothers = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "0",
                              "value": "0",
                            },
                            {
                              "display": "1",
                              "value": "1",
                            },
                            {
                              "display": "2",
                              "value": "2",
                            },
                            {
                              "display": "3",
                              "value": "3",
                            },
                            {
                              "display": "4",
                              "value": "4",
                            },
                            {
                              "display": "5",
                              "value": "5",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: "Unmarried Sister's",
                          hintText: 'Select',
                          value: _myUnmarriedSisters,
                          onSaved: (value) {
                            setState(() {
                              _myUnmarriedSisters = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myUnmarriedSisters = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "0",
                              "value": "0",
                            },
                            {
                              "display": "1",
                              "value": "1",
                            },
                            {
                              "display": "2",
                              "value": "2",
                            },
                            {
                              "display": "3",
                              "value": "3",
                            },
                            {
                              "display": "4",
                              "value": "4",
                            },
                            {
                              "display": "5",
                              "value": "5",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: RaisedButton(
                          color: jbColor,
                          child: Text('Create Profile',
                            style: TextStyle(
                                color: Colors.white
                            ),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  NormalAndStandard()));
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
