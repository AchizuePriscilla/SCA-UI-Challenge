import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sca_ui_challenge/shared/bulletDescriptions.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E1EF),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.3,
            child: Stack(children: [
              Positioned(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Icon(
                        Icons.favorite,
                        size: 28,
                        color: Colors.redAccent.shade400,
                      )
                    ],
                  ),
                ),
              )),
              Container(
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/SCA_Cupcake2.png'))),
              ),
            ]),
          ),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Chocolate cake',
                            style: TextStyle(
                                fontSize: 30.sp, fontWeight: FontWeight.w700)),
                        Text(
                          '10 Pieces',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xffBCBCBC),
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_outlined,
                                    color: Color(0xffFECC4B).withOpacity(1),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "\$4.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                        children: [
                                          TextSpan(
                                              text: '(#3.5)',
                                              style: TextStyle(
                                                  color: Color(0xffBCBCBC),
                                                  fontWeight: FontWeight.w800))
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: Colors.pink.shade900,
                                ),
                                Text(
                                  '30-35 mins delivery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                )
                              ],
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Row(
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    elevation: 3,
                                    child: Container(
                                        height: 30.h,
                                        width: 30.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFECC4B),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8),
                                          ),
                                        ),
                                        child: Icon(Icons.remove)),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Text('2',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Material(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    elevation: 3,
                                    child: Container(
                                        height: 30.h,
                                        width: 30.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFECC4B),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8),
                                          ),
                                        ),
                                        child: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "\$",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xffFECC4B),
                                    ),
                                    children: [
                                      TextSpan(
                                          text: "10.15",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30))
                                    ]),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Description',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  )),
                              BulletDescriptions(
                                description: 'Creamy and Crispy',
                              ),
                              BulletDescriptions(
                                description: 'Instant Make and Delivery',
                              ),
                              BulletDescriptions(
                                description: 'Full of Chocolates',
                              ),
                              BulletDescriptions(
                                description: '0% Sugar & Mint',
                              ),
                              BulletDescriptions(
                                description: 'Creamy and Crispy',
                              ),
                              BulletDescriptions(
                                description: 'Instant Make and Delivery',
                              ),
                              BulletDescriptions(
                                description: 'Full of Chocolates',
                              ),
                              BulletDescriptions(
                                description: '0% Sugar & Mint',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: 10.h, left: 10.w, right: 10.w),
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Color(0xffFECC4B),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
