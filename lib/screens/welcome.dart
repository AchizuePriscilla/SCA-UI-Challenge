import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sca_ui_challenge/screens/details.dart';
import 'package:sca_ui_challenge/shared/customListTile.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7FC),
      appBar: AppBar(
          backgroundColor: Color(0xffF8F7FC),
          elevation: 0,
          toolbarHeight: 70.h,
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
                      borderSide: BorderSide(width: 3.2),
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
                    indicatorColor: Color(0xff201F24),
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
                              height: 40.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                              child: Text(
                                '8 exercises',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.publicSans(
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w900)),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Expanded(
                              child: ListView(shrinkWrap: true, children: [
                                CustomListTile(
                                  isSmall: false,
                                  index: 1,
                                  titleText: 'Front Squat',
                                  subtitleText1: 'Strength',
                                  subtitleText2: 'Medium Intensity',
                                ),
                                CustomListTile(
                                  isSmall: false,
                                  index: 2,
                                  titleText: 'Hip Abduction',
                                  subtitleText1: 'Strength',
                                  subtitleText2: 'Low Intensity',
                                ),
                                CustomListTile(
                                  isSmall: false,
                                  index: 3,
                                  titleText: 'Front Squat',
                                  subtitleText1: 'Strength',
                                  subtitleText2: 'High Intensity',
                                ),
                                CustomListTile(
                                  isSmall: false,
                                  index: 4,
                                  titleText: 'Elliptical Constrainer',
                                  subtitleText1: 'Cardio',
                                  subtitleText2: 'High Intensity',
                                ),
                                CustomListTile(
                                  isSmall: false,
                                  index: 5,
                                  titleText: 'Goblet Squats',
                                  subtitleText1: 'Flexibility',
                                  subtitleText2: 'Medium Intensity',
                                ),
                                CustomListTile(
                                  isSmall: false,
                                  index: 6,
                                  titleText: 'Front Squat',
                                  subtitleText1: 'Strength',
                                  subtitleText2: 'Low Intensity',
                                ),
                              ]),
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
