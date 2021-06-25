import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BulletDescriptions extends StatelessWidget {
  final String description;
  const BulletDescriptions({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, top: 10.h),
      child: Row(
        children: [
          Container(
            height: 10.h,
            width: 10.w,
            decoration:
                BoxDecoration(color: Color(0xffFECC4B), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            description,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
