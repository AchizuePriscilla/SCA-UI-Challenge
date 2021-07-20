import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sca_ui_challenge/ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    this.counter,
  }) : super(key: key);
  final int? counter;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    widget.counter != 0
        ? Fluttertoast.showToast(
            msg: "This app has been launched ${widget.counter} times",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.red,
            textColor: Colors.white)
        : super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to News Block\n😊',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 55,
                width: 100,
                child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade900),
                    ),
                    onPressed: () async {
                      SharedPreferences emailpreference =
                          await SharedPreferences.getInstance();

                      emailpreference.remove('email');

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return UI(
                            counter: 0,
                          );
                        },
                      ));
                    },
                    child: Text('Log Out',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17))),
              )
            ],
          ),
        ),
      )),
    );
  }
}
