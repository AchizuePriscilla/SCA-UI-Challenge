import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sca_ui_challenge/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sca_ui_challenge/customTextField.dart';

class SignIn extends StatefulWidget {
  const SignIn(
      {Key? key,
      required this.emailController,
      required this.passwordController,
      this.visiblePassword: false,
      this.tabController,
      this.suffixIcon})
      : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TabController? tabController;
  final bool? visiblePassword;
  final Widget? suffixIcon;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  loginSuccessful() {
    Fluttertoast.showToast(
        msg: "Sign In successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.green,
        textColor: Colors.white);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomeScreen(
            counter: 0,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(children: [
        Text(
          'E-mail',
          style: TextStyle(color: Color(0xff84868a), fontSize: 14),
        ),
        SizedBox(
          height: 7,
        ),
        CustomTextField(
          obscureText: false,
          hintText: "melissarose@gmail.com",
          controller: widget.emailController,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Password',
          style: TextStyle(color: Color(0xff84868a), fontSize: 14),
        ),
        SizedBox(
          height: 7,
        ),
        CustomTextField(
            obscureText: widget.visiblePassword!,
            hintText: "......",
            controller: widget.passwordController,
            suffixIcon: widget.suffixIcon),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 55,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
              backgroundColor: MaterialStateProperty.all(
                Color(0xff2541fb),
              ),
            ),
            onPressed: () async {
              SharedPreferences emailpreference =
                  await SharedPreferences.getInstance();
              var email = emailpreference.getString('email');
              widget.emailController.text == email
                  ? loginSuccessful()
                  : Fluttertoast.showToast(
                      msg: "Invalid Email",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.red,
                      textColor: Colors.white);
            },
            child: Text(
              'Sign In',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ]),
    );
  }
}
