import 'package:flutter/material.dart';
import 'package:sca_ui_challenge/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sca_ui_challenge/customTextField.dart';

class SignIn extends StatelessWidget {
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
          controller: emailController,
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
            obscureText: visiblePassword!,
            hintText: "......",
            controller: passwordController,
            suffixIcon: suffixIcon),
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
            onPressed: emailController.text != null &&
                    passwordController.text != null
                ? () async {
                    SharedPreferences emailpreference =
                        await SharedPreferences.getInstance();
                    emailpreference.setString('email', emailController.text);
                    SharedPreferences passwordpreference =
                        await SharedPreferences.getInstance();
                    passwordpreference.setString(
                        'password', passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  }
                : null,
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
