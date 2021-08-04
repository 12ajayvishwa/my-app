import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';
import 'package:jb/screens/completeprofilepage/completeProfile4.dart';

class completeProfile2 extends StatefulWidget {
  @override
  _completeProfile2State createState() => _completeProfile2State();
}

class _completeProfile2State extends State<completeProfile2> {
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
                  "Please add education\n & \ncareer details",
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
                              hintText: "Enter candidate's highest qualification",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Highest qualification",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Candidate's yearly income",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Candidate's yearly income",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, top: 15,right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Occupation details",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Occupation details",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Income source',
                          hintText: 'Select',
                          value: _myWorks,
                          onSaved: (value) {
                            setState(() {
                              _myWorks = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myWorks = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "Private Company",
                              "value": "Private Company",
                            },
                            {
                              "display": "Government/Public Sector",
                              "value": "Government/Public Sector",
                            },
                            {
                              "display": "Defense/Civil Services",
                              "value": "Defense/Civil Services",
                            },
                            {
                              "display": "Business/Self Employed",
                              "value": "Business/Self Employed",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),

                      Container(padding: EdgeInsets.only(left: 15, right: 15,top: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Position",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Position",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, right: 15,top: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Company/Business name",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Company/Business name",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  completeProfile4()));
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
