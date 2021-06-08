import 'package:flutter/material.dart';
import 'package:sca_ui_challenge/customTextField.dart';

class UI extends StatefulWidget {
  const UI({Key? key}) : super(key: key);

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  bool? _visiblepassword;

  @override
  void initState() {
    super.initState();
    _visiblepassword = false;
  }

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
                        child: TabBarView(children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: ListView(children: [
                              Text(
                                'E-mail',
                                style: TextStyle(
                                    color: Color(0xff84868a), fontSize: 14),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              CustomTextField(
                                enabled: false,
                                obscureText: !_visiblepassword!,
                                inputDecoration: kInputDecoration.copyWith(
                                  hintText: "melissarose@gmail.com",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    color: Color(0xff84868a), fontSize: 14),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              CustomTextField(
                                enabled: false,
                                obscureText: _visiblepassword!,
                                inputDecoration: kInputDecoration.copyWith(
                                    hintText: "......",
                                    suffixIcon: _visiblepassword!
                                        ? IconButton(
                                            icon:
                                                Icon(Icons.visibility_outlined),
                                            color: Color(0xff2541fb),
                                            onPressed: () {
                                              setState(() {
                                                _visiblepassword =
                                                    !_visiblepassword!;
                                              });
                                            },
                                          )
                                        : IconButton(
                                            icon: Icon(
                                                Icons.visibility_off_outlined),
                                            color: Color(0xff2541fb),
                                            onPressed: () {
                                              setState(() {
                                                _visiblepassword =
                                                    !_visiblepassword!;
                                              });
                                            },
                                          )),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 55,
                                child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)))),
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xff2541fb),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: ListView(children: [
                              Text(
                                'E-mail',
                                style: TextStyle(
                                    color: Color(0xff84868a), fontSize: 14),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              CustomTextField(
                                enabled: false,
                                obscureText: false,
                                inputDecoration: kInputDecoration.copyWith(
                                  hintText: "melissarose@gmail.com",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    color: Color(0xff84868a), fontSize: 14),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              CustomTextField(
                                enabled: false,
                                obscureText: _visiblepassword!,
                                inputDecoration: kInputDecoration.copyWith(
                                    hintText: "......",
                                    suffixIcon: _visiblepassword!
                                        ? IconButton(
                                            icon:
                                                Icon(Icons.visibility_outlined),
                                            color: Color(0xff2541fb),
                                            onPressed: () {
                                              setState(() {
                                                _visiblepassword =
                                                    !_visiblepassword!;
                                              });
                                            },
                                          )
                                        : IconButton(
                                            icon: Icon(
                                                Icons.visibility_off_outlined),
                                            color: Color(0xff2541fb),
                                            onPressed: () {
                                              setState(() {
                                                _visiblepassword =
                                                    !_visiblepassword!;
                                              });
                                            },
                                          )),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 55,
                                child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)))),
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xff2541fb),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
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
    );
  }
}
