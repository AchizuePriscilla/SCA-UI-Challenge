import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final Color? color;
  const Categories({
    Key? key,
    required this.imagePath,
    required this.categoryName,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(right: 10.w),
              padding: EdgeInsets.all(15),
              height: 45.h,
              width: 55.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color ?? color,
              ),
              child: Center(
                child: Image.asset(imagePath),
              )),
          Text(categoryName)
        ],
      ),
    );
  }
}
