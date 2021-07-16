import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sca_ui_challenge/shared/customListTile.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List _items = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7FC),
      appBar: AppBar(
          backgroundColor: Color(0xffF8F7FC),
          elevation: 0,
          toolbarHeight: 70.h,
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text('Good morning!',
                style: GoogleFonts.publicSans(
                    textStyle: TextStyle(
                        color: Color(0xff201F24),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700))),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: CircleAvatar(
                    backgroundColor: Color(0xffF8F7FC),
                    backgroundImage: AssetImage('assets/images/me.jpg'))),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Container(
          child: DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
                    isScrollable: true,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                          width: 3.2, color: Colors.blueGrey.shade600),
                      insets: EdgeInsets.fromLTRB(-10, 0.0, 20.0, 0.0),
                    ),
                    labelPadding: EdgeInsets.only(top: 10.h, right: 30.h),
                    labelColor: Color(0xff201F24),
                    labelStyle: GoogleFonts.publicSans(
                      textStyle: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w900),
                    ),
                    unselectedLabelColor: Color(0xff201F24),
                    unselectedLabelStyle: GoogleFonts.publicSans(
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 4,
                    indicatorColor: Color(0xff737081),
                    tabs: [
                      Container(
                        width: 140.w,
                        child: Tab(
                          text: "Today's workout",
                        ),
                      ),
                      Container(
                        child: Tab(
                          text: "Week",
                        ),
                      ),
                      Container(
                        child: Tab(
                          text: "Month",
                        ),
                      )
                    ]),
                Expanded(
                  child: Container(
                    child: TabBarView(children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                              child: Text(
                                '6 exercises',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.publicSans(
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w900)),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Expanded(
                              child: _items.length > 0
                                  ? ListView.builder(
                                      itemCount: _items.length,
                                      itemBuilder: (context, index) {
                                        return CustomListTile(
                                            index: index,
                                            titleText: _items[index]
                                                ["titleText"],
                                            subtitleText1: _items[index]
                                                ["subtitleText1"],
                                            subtitleText2: _items[index]
                                                ["subtitleText2"],
                                            isSmall: false);
                                      },
                                    )
                                  : Center(child: CircularProgressIndicator()),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container()
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
