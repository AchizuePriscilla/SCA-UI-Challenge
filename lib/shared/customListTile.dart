import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sca_ui_challenge/screens/details.dart';

class CustomListTile extends StatelessWidget {
  final int index;
  final String titleText;
  final String subtitleText1;
  final String subtitleText2;
  final bool isSmall;

  const CustomListTile({
    Key? key,
    required this.index,
    required this.titleText,
    required this.subtitleText1,
    required this.subtitleText2,
    required this.isSmall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSmall
        ? Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              horizontalTitleGap: 6.w,
              leading: Container(
                  height: 75.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(index.toString(),
                          style: GoogleFonts.publicSans(
                            textStyle: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xff737081),
                                fontWeight: FontWeight.w700),
                          )))),
              title: Text(
                titleText,
                style: GoogleFonts.publicSans(
                  textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff201F24),
                      fontWeight: FontWeight.w900),
                ),
              ),
              subtitle: Text(
                subtitleText1,
                style: GoogleFonts.publicSans(
                  textStyle: TextStyle(
                      fontSize: 8.sp,
                      color: Color(0xff201F24),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        : Container(
            height: 90.h,
            child: ListTile(
              horizontalTitleGap: 27.w,
              leading: Container(
                  height: 75.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFBEBCA),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(index.toString(),
                          style: GoogleFonts.publicSans(
                            textStyle: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xffE6CF9B),
                                fontWeight: FontWeight.w900),
                          )))),
              title: Text(
                titleText,
                style: GoogleFonts.publicSans(
                  textStyle: TextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff201F24),
                      fontWeight: FontWeight.w900),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 25.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFBEBCA)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.w, top: 5),
                          child: Text(
                            subtitleText1,
                            style: GoogleFonts.publicSans(
                              textStyle: TextStyle(
                                  fontSize: 13.sp,
                                  color: Color(0xff201F24),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 25.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey.shade100),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.w, top: 5),
                          child: Text(
                            subtitleText2,
                            style: GoogleFonts.publicSans(
                              textStyle: TextStyle(
                                  fontSize: 13.sp,
                                  color: Color(0xff201F24),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
            ),
          );
  }
}
