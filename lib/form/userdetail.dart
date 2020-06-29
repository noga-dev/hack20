import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../fitness_app/fitness_app_home_screen.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'home_screen.dart';
// import 'boarding_screen.dart';

bool showNameError = false;
bool showEmailError = false;
bool showPasswordError = false;


final _eatController = new TextEditingController();
final _burnController = new TextEditingController();
final _weightController = new TextEditingController();
final _nameController = new TextEditingController();
final _hightController = new TextEditingController();
final _waterController = new TextEditingController();

class UserDetail extends StatefulWidget {
  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF8185E2),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: new ListView(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 32.0, 0.0, 32.0),
              child: new Row(
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
//                      Navigator.pushReplacement(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => FitnessAppHomeScreen()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: new Text(
                      "Your details",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Form(
              key: _formKey,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new TextFormField(
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    decoration: new InputDecoration(
                      labelText: "Your Name",
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
//                        errorText: showEmailError ? "Please enter your Name" : null
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    controller: _nameController,
                  ),
                  new TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    decoration: new InputDecoration(
                      labelText: "What's Your height?",
                      hintText: 'cm',
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
//                        errorText: showEmailError ? "Please enter your height" : null
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your height';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _hightController,
                  ),
                  new TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    decoration: new InputDecoration(
                      labelText: "How many calories do you consume daily?",
                      hintText: 'kCal',
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
//                        errorText: showEmailError ? "Please enter" : null
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your daily consumed calories';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _eatController,
                  ),
                  new TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    decoration: new InputDecoration(
                      labelText: "How many calories do you burn daily?",
                      hintText: 'kCal',
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
//                        errorText: showEmailError ? "Please enter" : null
                    ),

                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your daily burned calories';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _burnController,
                    //onChanged: validateEmail,
                  ),
                  new TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    decoration: new InputDecoration(
                      labelText: "Your weight",
                      hintText: 'kg',
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
//                        errorText: showEmailError ? "Please enter" : null
                    ),

                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your weight';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _weightController,
                    //onChanged: validateEmail,
                  ),
                  new TextFormField(
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                    decoration: new InputDecoration(
                      labelText: "How much water do you drink daily?",
                      hintText: 'mL',
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
//                        errorText: showEmailError ? "Please enter" : null
                    ),

                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter how much water you drink per day';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _waterController,
                    //onChanged: validateEmail,
                  ),
                  new Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 24.0),
                    child: RaisedButton(
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          saveData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FitnessAppHomeScreen()));
                        }
                      },
                    ),
                  ),
                  // new Padding(
                  //   padding: EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 24.0),
                  //   child: new RaisedButton(
                  //     elevation: 5.0,
                  //      onPressed: FitnessAppHomeScreen(),
                  //     color: Colors.white,
                  //     textColor: Colors.deepPurpleAccent,
                  //     shape: new RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30.0)
                  //     ),
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(12.0),
                  //       child: new Text(
                  //         "Sign up",
                  //         style: new TextStyle(
                  //             fontSize: 20.0,
                  //             fontFamily: "Signika"
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString('name', _nameController.text.toString());
      prefs.setInt('hight', int.parse(_hightController.text));
      prefs.setInt('eat',int.parse(_eatController.text));
      prefs.setInt('burn',  int.parse(_burnController.text));
      prefs.setInt('weight', int.parse(_weightController.text));
      prefs.setInt('water', int.parse(_waterController.text));
    });
  }
  void validateEmail(String value) {
    if (RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      setState(() {
        showEmailError = false;
      });
    } else {
      setState(() {
        showEmailError = true;
      });
    }
  }
}
