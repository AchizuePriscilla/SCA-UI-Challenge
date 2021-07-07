import 'dart:async';

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
  var userPassword;

  @override
  void initState() {
    validate().whenComplete(() => Timer(
          Duration(seconds: 3),
          () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return userEmail != null && userPassword != null
                    ? HomeScreen()
                    : UI();
              },
            ),
          ),
        ));
    super.initState();
  }

  Future validate() async {
    SharedPreferences emailpreference = await SharedPreferences.getInstance();
    SharedPreferences passwordpreference =
        await SharedPreferences.getInstance();

    var email = emailpreference.getString('email');
    var password = passwordpreference.getString('password');

    setState(() {
      userEmail = email;
      userPassword = password;
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
