import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jb/constants/color.dart';

import 'completeProfile2.dart';

class completeProfile1 extends StatefulWidget {
  @override
  _completeProfile1State createState() => _completeProfile1State();
}

class _completeProfile1State extends State<completeProfile1> {
  final dateController = TextEditingController();
  String _selectedDate = "please chose your DOB";
  String _selectedTime = "Please chose your birth time";

  Future<void> _openTimePicker(BuildContext context) async {
    final TimeOfDay t =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (t != null) {
      setState(() {
        _selectedDate = t.format(context);
      });
    }
  }

  Future<void> _openDatePicker(BuildContext context) async {
    final DateTime  d = await showDatePicker(
        context: context,
        initialDate: DateTime.utc(2021),
        firstDate: DateTime(1950),
        lastDate: DateTime(2021));

    if (d != null){
      setState(() {
        _selectedDate = new DateFormat.yMMMd("en_US").format(d).toString();
      });
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }
  String _myActivity;
  String _maritalStatus;
  String _maritalStatusResult;
  String _myDiet;
  String _myDietResult;
  String _myHeight;
  String _myHeightResult;
  String _myGender;
  String _myGenderResult;
  String _myActivityResult;
  String _Religion;
  String _ReligionResult;
  String _myComplexion;
  String _myComplexionResult;
  String _myGautra;
  String _MyGautraResult;
  String _myRestriction;
  String _myRestrictionResult;
  String _manglik;
  String _manglikResult;
  String _smoker;
  String _smokerResult;
  String _alcoholic;
  String _alcoholicResult;

  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _maritalStatus = '';
    _maritalStatusResult = '';
    _myDiet = '';
    _myDietResult = '';
    _myHeight = '';
    _myHeightResult = '';
    _myActivity = '';
    _myActivityResult = '';
    _myGender = '';
    _myGenderResult = '';
    _Religion = '';
    _ReligionResult = '';
    _myComplexion = '';
    _myComplexionResult = '';
    _myGautra = '';
    _MyGautraResult = '';
    _myRestriction = '';
    _myRestrictionResult = '';
    _manglik = '';
    _manglikResult = '';
    _smoker = '';
    _smokerResult = '';
    _alcoholic = '';
    _alcoholicResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _maritalStatusResult = _maritalStatus;
        _myDiet = _myDietResult;
        _myHeight = _myHeightResult;
        _myActivityResult = _myActivity;
        _myGenderResult = _myGender;
        _ReligionResult = _Religion;
        _myComplexionResult = _myComplexion;
        _MyGautraResult = _myGautra;
        _myRestrictionResult = _myRestriction;
        _manglikResult = _manglik;
        _smokerResult = _smoker;
        _alcoholicResult = _alcoholic;
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
                  "Awesome! Now some basic \n details about Candidate",
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
                        width: 340,
                        color: Colors.grey[300],
                        padding: EdgeInsets.only(left: 25,top: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(_selectedDate),
                            IconButton(
                                icon: Icon(Icons.calendar_today),
                                onPressed: (){
                                  _openDatePicker(context);
                                })
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Complexion',
                          hintText: 'Select',
                          value: _myComplexion,
                          onSaved: (value) {
                            setState(() {
                              _myComplexion = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myComplexion = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "Fair",
                              "value": "Fair",
                            },
                            {
                              "display": "Very faire",
                              "value": "Very faire",
                            },
                            {
                              "display": "Medium",
                              "value": "Medium",
                            },
                            {
                              "display": "Olive",
                              "value": "Olive",
                            },
                            {
                              "display": "Brown",
                              "value": "Brown",
                            },
                            {
                              "display": "Black",
                              "value": "Black",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Height',
                          hintText: 'Select',
                          value: _myHeight,
                          onSaved: (value) {
                            setState(() {
                              _myHeight = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myHeight = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "4ft 6in - 137cm",
                              "value": "4ft 6in - 137cm",
                            },
                            {
                              "display": "4ft 7in - 139cm",
                              "value": "4ft 7in - 139cm",
                            },
                            {
                              "display": "4ft 8in - 142cm",
                              "value": "4ft 8in - 142cm",
                            },
                            {
                              "display": "4ft 9in - 144cm",
                              "value": "4ft 9in - 144cm",
                            },
                            {
                              "display": "4ft 10in - 147cm",
                              "value": "4ft 10in - 147cm",
                            },
                            {
                              "display": "4ft 11in - 149cm",
                              "value": "4ft 11in - 149cm",
                            },
                            {
                              "display": "5ft  - 152cm",
                              "value": "5ft  - 152cm",
                            },
                            {
                              "display": "5ft 1in - 154cm",
                              "value": "5ft 1in - 154cm",
                            },
                            {
                              "display": "5ft 2in - 157cm",
                              "value": "5ft 2in - 157cm",
                            },
                            {
                              "display": "5ft 3in - 160cm",
                              "value": "5ft 3in - 160cm",
                            },
                            {
                              "display": "5ft 4in - 162cm",
                              "value": "5ft 4in - 162cm",
                            },
                            {
                              "display": "5ft 5in - 165cm",
                              "value": "5ft 5in - 165cm",
                            },{
                              "display": "5ft 6in - 167cm",
                              "value": "5ft 6in - 167cm",
                            },
                            {
                              "display": "5ft 7in - 170cm",
                              "value": "5ft 7in - 170cm",
                            },
                            {
                              "display": "5ft 8in - 172cm",
                              "value": "5ft 8in - 172cm",
                            },
                            {
                              "display": "5ft 9in - 175cm",
                              "value": "5ft 9in - 175cm",
                            },
                            {
                              "display": "5ft 10in - 177cm",
                              "value": "5ft 10in - 177cm",
                            },
                            {
                              "display": "5ft 11in - 180cm",
                              "value": "5ft 11in - 180cm",
                            },
                            {
                              "display": "6ft - 182cm ",
                              "value": "6ft - 182cm ",
                            },
                            {
                              "display": "6ft 1in - 185cm ",
                              "value": "6ft 1in - 185cm ",
                            },
                            {
                              "display": "6ft 2in - 187cm ",
                              "value": "6ft 2in - 187cm ",
                            },
                            {
                              "display": "6ft 3in - 190cm",
                              "value": "6ft 3in - 190cm",
                            },
                            {
                              "display": "6ft 4in - 193cm",
                              "value": "6ft 4in - 193cm",
                            },
                            {
                              "display": "6ft 5in - 195cm",
                              "value": "6ft 5in - 195cm",
                            },
                            {
                              "display": "6ft 6in - 198cm",
                              "value": "6ft 6in - 198cm",
                            },
                            {
                              "display": "6ft 7in - 200cm ",
                              "value": "6ft 7in - 200cm",
                            },
                            {
                              "display": "6ft 8in - 203cm",
                              "value": "6ft 8in - 203cm",
                            },
                            {
                              "display": "6ft 9in - 205cm",
                              "value": "6ft 9in - 205cm",
                            },
                            {
                              "display": "6ft 10in - 208cm",
                              "value": "6ft 10in - 208cm",
                            },
                            {
                              "display": "6ft 11in - 210cm",
                              "value": "6ft 11in - 210cm",
                            },
                            {
                              "display": "7ft  - 213cm",
                              "value": "7ft  - 213cm",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Marital status',
                          hintText: 'Select',
                          value: _maritalStatus,
                          onSaved: (value) {
                            setState(() {
                              _maritalStatus = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "Unmarried",
                              "value": "Unmarried",
                            },
                            {
                              "display": "Divorced",
                              "value": "Divorced",
                            },
                            {
                              "display": "Widow",
                              "value": "Widow",
                            },
                            {
                              "display": "Widower",
                              "value": "Widower",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Varn",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Varn",
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
                          titleText: "Candidate's Gautra",
                          hintText: 'Select',
                          value: _myGautra,
                          onSaved: (value) {
                            setState(() {
                              _myGautra = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myGautra = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
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
                              "display": "Other",
                              "value": "Other",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Maternal Uncles Gautra",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Maternal Uncles Gautra",
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
                          titleText: 'Restriction',
                          hintText: 'Select',
                          value: _myRestriction,
                          onSaved: (value) {
                            setState(() {
                              _myRestriction = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myRestriction = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "yes",
                              "value": "Yes",
                            },
                            {
                              "display": "No",
                              "value": "No",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Manglik',
                          hintText: 'Select',
                          value: _manglik,
                          onSaved: (value) {
                            setState(() {
                              _manglik = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _manglik = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "Yes",
                              "value": "Yes",
                            },
                            {
                              "display": "No",
                              "value": "No",
                            },
                            {
                              "display": "Aanshik",
                              "value": "Aanshik",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Smoker',
                          hintText: 'Select',
                          value: _smoker,
                          onSaved: (value) {
                            setState(() {
                              _smoker = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _smoker = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "Yes",
                              "value": "Yes",
                            },
                            {
                              "display": "No",
                              "value": "No",
                            },
                            {
                              "display": "Occasionally",
                              "value": "Occasionally",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'Alcoholic',
                          hintText: 'Select',
                          value: _alcoholic,
                          onSaved: (value) {
                            setState(() {
                              _alcoholic = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _alcoholic = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Select",
                              "value": "Select",
                            },
                            {
                              "display": "Yes",
                              "value": "Yes",
                            },
                            {
                              "display": "No",
                              "value": "No",
                            },
                            {
                              "display": "Occasionally",
                              "value": "Occasionally",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'State',
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
                              "display": "Andhra pradesh",
                              "value": "Andhra pradesh",
                            },
                            {
                              "display": "Bihar",
                              "value": "Bihar",
                            },
                            {
                              "display": "Delhi-NCR",
                              "value": "Delhi-NCR",
                            },
                            {
                              "display": "Gujrat",
                              "value": "Gujrat",
                            },
                            {
                              "display": "Haryana",
                              "value": "Haryana",
                            },
                            {
                              "display": "Jharkhand",
                              "value": "Jharkhand",
                            },
                            {
                              "display": "Karnatka",
                              "value": "Karnatka",
                            },
                            {
                              "display": "Kerala",
                              "value": "Kerala",
                            },
                            {
                              "display": "Madhya Pradesh",
                              "value": "Madhya Pradesh",
                            },
                            {
                              "display": "Maharashtra",
                              "value": "Maharashtra",
                            },
                            {
                              "display": "Orissa",
                              "value": "Orissa",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: DropDownFormField(
                          titleText: 'City',
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
                              "display": "Bhopal",
                              "value": "Bhopal",
                            },
                            {
                              "display": "Gwalior",
                              "value": "Gwalior",
                            },
                            {
                              "display": "Indore",
                              "value": "Indore",
                            },
                            {
                              "display": "Jabalpur",
                              "value": "Jabalpur",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Candidate's address",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Candidate's address",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                          maxLength: 20,
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
                          child: Text('Continue',
                            style: TextStyle(
                                color: Colors.white
                            ),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => completeProfile2()));
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
