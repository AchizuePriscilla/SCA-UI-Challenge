import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundTextContainer extends StatelessWidget {
  final String text;
  const RoundTextContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.w, left: 5.w),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.publicSans(
              textStyle: TextStyle(
                  color: Color(0xff737081), fontWeight: FontWeight.w800)),
        ),
      ),
    );
  }
}
