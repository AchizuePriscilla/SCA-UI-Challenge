import 'package:flutter/material.dart';
import 'package:sca_ui_challenge/customTextField.dart';

class UI extends StatefulWidget {
  const UI({Key? key}) : super(key: key);

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/ui challenge logo.png",
                      height: 120,
                    ),
                    SizedBox(height: 5),
                    Text('News Block',
                        style: TextStyle(
                            letterSpacing: -2,
                            color: Color(0xff2541fb),
                            fontSize: 33,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center),
                    SizedBox(height: 10),
                    Text('Everything You Want To Know',
                        style:
                            TextStyle(color: Color(0xff84868a), fontSize: 20),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffeff3ff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                          isScrollable: false,
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Color(0xff2541fb), width: 3.2),
                            insets: EdgeInsets.fromLTRB(48.0, 0.0, 48.0, 68.0),
                          ),
                          labelPadding: EdgeInsets.only(top: 20),
                          labelStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                          unselectedLabelColor: Color(0xff84868a),
                          unselectedLabelStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.normal),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4,
                          indicatorColor: Color(0xff2541fb),
                          labelColor: Color(0xff2541fb),
                          tabs: [
                            Tab(
                              text: "Sign Up",
                            ),
                            Tab(
                              text: "Sign In",
                            ),
                          ]),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TabBarView(children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'E-mail',
                                      style: TextStyle(
                                          color: Color(0xff84868a),
                                          fontSize: 14),
                                    ),
                                    SharedTextField(
                                      enabled: false,
                                      obscureText: false,
                                      inputDecoration:
                                          kInputDecoration.copyWith(
                                        hintText: "melissarose@gmail.com",
                                      ),
                                    ),
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                          color: Color(0xff84868a),
                                          fontSize: 14),
                                    ),
                                    SharedTextField(
                                      enabled: false,
                                      obscureText: true,
                                      inputDecoration:
                                          kInputDecoration.copyWith(
                                        hintText: "......",
                                        suffixIcon: Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Color(0xff2541fb),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              16)))),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Color(0xff2541fb),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'E-mail',
                                      style: TextStyle(
                                          color: Color(0xff84868a),
                                          fontSize: 14),
                                    ),
                                    SharedTextField(
                                      enabled: false,
                                      obscureText: false,
                                      inputDecoration:
                                          kInputDecoration.copyWith(
                                        hintText: "melissarose@gmail.com",
                                      ),
                                    ),
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                          color: Color(0xff84868a),
                                          fontSize: 14),
                                    ),
                                    SharedTextField(
                                      enabled: false,
                                      obscureText: true,
                                      inputDecoration:
                                          kInputDecoration.copyWith(
                                        hintText: "......",
                                        suffixIcon: Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Color(0xff2541fb),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              16)))),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Color(0xff2541fb),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
