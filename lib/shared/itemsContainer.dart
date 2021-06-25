import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sca_ui_challenge/screens/details.dart';

class ItemsContainer extends StatelessWidget {
  final Color? color;
  final String itemName;
  final String itemWeight;
  final String number;
  final String imagePath;
  final bool isSmall;
  final double? innerPadding;
  const ItemsContainer({
    Key? key,
    this.color,
    required this.itemName,
    required this.itemWeight,
    required this.number,
    required this.imagePath,
    required this.isSmall,
    this.innerPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
      child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
          elevation: 2,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(8),
              width: 148.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(innerPadding ?? 22),
                      margin: EdgeInsets.only(bottom: 5.h),
                      height: isSmall ? 80.h : 130.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: color ?? color,
                        // image: DecorationImage(image: AssetImage(imagePath))
                      ),
                      child: Container(
                          height: isSmall ? 80.h : 130.h,
                          width: 130.w,
                          child: Image.asset(imagePath))),
                  Text(
                    itemName,
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp),
                  ),
                  Text(
                    itemWeight,
                    style: TextStyle(
                        color: Color(0xffBCBCBC), fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "\$",
                              style: TextStyle(
                                  color: Color(0xffFECC4B),
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              number,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        elevation: 3,
                        child: Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFECC4B),
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
