import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCircularListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const CustomCircularListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        horizontalTitleGap: 3.w,
        leading: Container(
          height: 50.h,
          width: 35.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFBEBCA),
          ),
          child: Icon(
            icon,
            color: Color(0xffE6CF9B),
            size: 23,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.publicSans(
            textStyle: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff201F24),
                fontWeight: FontWeight.w900),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.publicSans(
            textStyle: TextStyle(
                fontSize: 12.sp,
                color: Color(0xff201F24),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
