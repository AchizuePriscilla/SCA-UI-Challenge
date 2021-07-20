import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:sca_ui_challenge/signIn.dart';
import 'package:sca_ui_challenge/signUp.dart';

class UI extends StatefulWidget {
  const UI({
    Key? key,
    this.counter,
  }) : super(key: key);
  final int? counter;

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> with SingleTickerProviderStateMixin {
  bool? _visiblepassword;
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    _visiblepassword = false;
    tabController = TabController(length: 2, vsync: this);
    widget.counter != 0
        ? Fluttertoast.showToast(
            msg: "This app has been launched ${widget.counter} times",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white)
        : null;
  }

  TextEditingController emailController1 = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController emailController2 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                50, MediaQuery.of(context).padding.top + 40, 50, 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                    style: TextStyle(color: Color(0xff84868a), fontSize: 20),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffeff3ff),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                        controller: tabController,
                        isScrollable: false,
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(color: Color(0xff2541fb), width: 3.2),
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
                      child: Container(
                        child: TabBarView(controller: tabController, children: [
                          SignUp(
                            tabController: tabController,
                            emailController: emailController1,
                            passwordController: passwordController1,
                            visiblePassword: _visiblepassword,
                            suffixIcon: _visiblepassword!
                                ? IconButton(
                                    icon: Icon(Icons.visibility_outlined),
                                    color: Color(0xff2541fb),
                                    onPressed: () {
                                      setState(() {
                                        _visiblepassword = !_visiblepassword!;
                                      });
                                    },
                                  )
                                : IconButton(
                                    icon: Icon(Icons.visibility_off_outlined),
                                    color: Color(0xff2541fb),
                                    onPressed: () {
                                      setState(() {
                                        _visiblepassword = !_visiblepassword!;
                                      });
                                    },
                                  ),
                          ),
                          SignIn(
                            tabController: tabController,
                            emailController: emailController2,
                            passwordController: passwordController2,
                            visiblePassword: _visiblepassword,
                            suffixIcon: _visiblepassword!
                                ? IconButton(
                                    icon: Icon(Icons.visibility_outlined),
                                    color: Color(0xff2541fb),
                                    onPressed: () {
                                      setState(() {
                                        _visiblepassword = !_visiblepassword!;
                                      });
                                    },
                                  )
                                : IconButton(
                                    icon: Icon(Icons.visibility_off_outlined),
                                    color: Color(0xff2541fb),
                                    onPressed: () {
                                      setState(() {
                                        _visiblepassword = !_visiblepassword!;
                                      });
                                    },
                                  ),
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
    );
  }
}
