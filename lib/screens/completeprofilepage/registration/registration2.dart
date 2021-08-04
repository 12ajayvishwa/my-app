import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jb/constants/color.dart';

import '../completeProfile1.dart';

class registration2 extends StatefulWidget {
  @override
  _registration2State createState() => _registration2State();
}

class _registration2State extends State<registration2> {
  final dateController = TextEditingController();
  final formKey = new GlobalKey<FormState>();
  String _selectedDate = "please chose your DOB";
  String _myActivity;
  String _myActivityResult;

  Future<void> _openDatePicker(BuildContext context) async {
    final DateTime d = await showDatePicker(
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
  void initState() {
    // TODO: implement initState
    _myActivity = '';
    _myActivityResult = '';
    super.initState();
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate())
      form.save();
    setState(() {
      _myActivityResult = _myActivity;
    });

  }



  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
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
        backgroundColor: jbColor,
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
                padding: EdgeInsets.only(top: 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Birth place",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "enter birth place",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(padding: EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "india(+91)",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Mobile number",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Password",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: true,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Living in",
                              hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                              labelText: "Living in ",
                              labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                              border: InputBorder.none,
                              filled: true),
                          obscureText: true,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>completeProfile1()));
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