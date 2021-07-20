import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sca_ui_challenge/home_screen.dart';
import 'package:sca_ui_challenge/ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var userEmail;
  int _counter = 0;

  @override
  void initState() {
    incrementCounter();
    validate().whenComplete(() => Timer(
          Duration(seconds: 3),
          () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return userEmail != null
                    ? HomeScreen(
                        counter: _counter,
                      )
                    : UI(
                        counter: _counter,
                      );
              },
            ),
          ),
        ));

    super.initState();
  }

  Future validate() async {
    SharedPreferences emailpreference = await SharedPreferences.getInstance();

    var email = emailpreference.getString('email');

    setState(() {
      userEmail = email;
    });
  }

  void incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.blue.shade900,
          ),
        ));
  }
}
