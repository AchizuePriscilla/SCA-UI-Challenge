import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sca_ui_challenge/shared/customCircularListTile.dart';
import 'package:sca_ui_challenge/shared/customListTile.dart';
import 'package:sca_ui_challenge/shared/roundTextContainer.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7FC),
      appBar: AppBar(
        backgroundColor: Color(0xffF8F7FC),
        elevation: 0,
        toolbarHeight: 70.h,
        centerTitle: true,
        title: Text('Front Squat',
            style: GoogleFonts.publicSans(
                textStyle: TextStyle(
                    color: Color(0xff201F24),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700))),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff201F24),
              size: 33,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/ui-challenge-workout.png'))),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10.h),
                              child: Text(
                                'Exercise',
                                style: GoogleFonts.publicSans(
                                  textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff201F24),
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white),
                              padding: EdgeInsets.only(left: 10.w),
                              height: 80.h,
                              child: Row(children: [
                                CustomCircularListTile(
                                  icon: Icons.whatshot,
                                  title: '60kg',
                                  subtitle: 'Weight',
                                ),
                                CustomCircularListTile(
                                  icon: Icons.clear,
                                  title: '10',
                                  subtitle: 'Reps',
                                ),
                                CustomCircularListTile(
                                  icon: Icons.refresh,
                                  title: '4',
                                  subtitle: 'Sets',
                                ),
                              ]),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, top: 10.h, bottom: 10.h),
                              child: Text(
                                'Muscle groups',
                                style: GoogleFonts.publicSans(
                                  textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff201F24),
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                RoundTextContainer(text: 'Quadriceps'),
                                RoundTextContainer(
                                  text: 'Gluteus Maximus',
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 0, right: 0, top: 10.h),
                              child: Text(
                                'History',
                                style: GoogleFonts.publicSans(
                                  textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff201F24),
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              height: 75.h,
                              child: Row(children: [
                                CustomListTile(
                                  index: 54,
                                  titleText: 'Completed sets',
                                  subtitleText1: 'Weight',
                                  subtitleText2: '',
                                  isSmall: true,
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 0),
                                    horizontalTitleGap: 6.w,
                                    leading: Container(
                                      height: 75.h,
                                      width: 45.w,
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade100,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Column(children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 7.h),
                                            child: Text('55',
                                                style: GoogleFonts.publicSans(
                                                  textStyle: TextStyle(
                                                      fontSize: 20.sp,
                                                      color: Color(0xff737081),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                          Text('kg',
                                              style: GoogleFonts.publicSans(
                                                textStyle: TextStyle(
                                                    fontSize: 13.sp,
                                                    color: Color(0xff737081),
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ]),
                                      ),
                                    ),
                                    title: Text(
                                      'Average weight',
                                      style: GoogleFonts.publicSans(
                                        textStyle: TextStyle(
                                            fontSize: 12.sp,
                                            color: Color(0xff201F24),
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    subtitle: Text(
                                      '+10%',
                                      style: GoogleFonts.publicSans(
                                        textStyle: TextStyle(
                                            fontSize: 8.sp,
                                            color: Color(0xff201F24),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
