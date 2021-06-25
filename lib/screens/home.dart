import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sca_ui_challenge/shared/categoriesContainer.dart';
import 'package:sca_ui_challenge/shared/itemsContainer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: FloatingActionButton(
          backgroundColor: Color(0xffFECC4B),
          onPressed: () {},
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 45.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Icon(
                  Icons.dashboard,
                  color: Color(0xffFECC4B),
                  size: 27,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 50.w),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Icon(
                    Icons.notifications_on,
                    color: Color(0xffBCBCBC),
                    size: 27,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Icon(
                  Icons.food_bank,
                  color: Color(0xffBCBCBC),
                  size: 27,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Icon(
                  Icons.settings,
                  color: Color(0xffBCBCBC),
                  size: 27,
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF9FAFF).withOpacity(1),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.share_outlined,
                        size: 27,
                      ),
                      Container(
                          height: 40.w,
                          width: 50.w,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 27,
                          )),
                    ]),
                Text(
                  'Quality',
                  style: GoogleFonts.cabin(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 42.sp),
                  ),
                ),
                Text(
                  'Food & Groceries',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 35.sp),
                  ),
                ),
                Container(
                  child: Row(children: [
                    Expanded(
                      child: Container(
                          child: Material(
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                        elevation: 2,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13),
                                  ),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.search_outlined,
                                color: Color(0xff202020),
                                size: 30,
                              ),
                              hintText: 'Search goods...',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Material(
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                        elevation: 3,
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFECC4B),
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                          ),
                          child: Icon(Icons.tune),
                        ),
                      ),
                    ),
                  ]),
                  margin: EdgeInsets.only(bottom: 10.h),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Color(0xffF9FAFF),
                      ),
                      child: ListView(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Categories(
                                imagePath: 'assets/images/fruits.png',
                                categoryName: 'Fruits',
                                color: Color(0xffFAE6DA),
                              ),
                              Categories(
                                imagePath: 'assets/images/juice.png',
                                categoryName: 'Juice',
                                color: Color(0xffCDEEFB),
                              ),
                              Categories(
                                imagePath: 'assets/images/rice.jpg',
                                categoryName: 'Rice',
                                color: Color(0xffFAE6DA),
                              ),
                              Categories(
                                imagePath: 'assets/images/meat.png',
                                categoryName: 'Meats',
                                color: Color(0xffFAE6DA),
                              ),
                              Categories(
                                imagePath: 'assets/images/SCA_Cupcake2.png',
                                categoryName: 'Bakery',
                                color: Colors.deepPurpleAccent.withOpacity(0.3),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  flex: 5,
                  child: Column(children: [
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(top: 3.w),
                            child: Container(
                              child: SingleChildScrollView(
                                child: Column(children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: ItemsContainer(
                                                isSmall: true,
                                                color: Colors.green
                                                    .withOpacity(0.3),
                                                itemName: 'Cabbage',
                                                itemWeight: '12kg',
                                                number: '10.15',
                                                imagePath:
                                                    'assets/images/SCA_Cabbage2.png',
                                              ),
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                              child: ItemsContainer(
                                                isSmall: false,
                                                color: Color(0xffFAE6DA),
                                                itemName: 'Rice',
                                                itemWeight: '30kg',
                                                number: '70.12',
                                                imagePath:
                                                    'assets/images/SCA_Rice2.png',
                                              ),
                                            ),
                                            Container(
                                              child: ItemsContainer(
                                                isSmall: true,
                                                color: Colors.green
                                                    .withOpacity(0.3),
                                                itemName: 'Cabbage',
                                                itemWeight: '12kg',
                                                number: '10.15',
                                                imagePath:
                                                    'assets/images/SCA_Cabbage2.png',
                                              ),
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                              child: ItemsContainer(
                                                isSmall: false,
                                                color: Color(0xffFAE6DA),
                                                itemName: 'Rice',
                                                itemWeight: '30kg',
                                                number: '70.12',
                                                imagePath:
                                                    'assets/images/SCA_Rice2.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                              child: ItemsContainer(
                                                isSmall: false,
                                                color: Color(0xffFAE6DA),
                                                itemName: 'Strawberry',
                                                itemWeight: '8kg',
                                                number: '6.10',
                                                imagePath:
                                                    'assets/images/SCA_Strawberries2.png',
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                              child: ItemsContainer(
                                                isSmall: true,
                                                color: Colors.deepPurpleAccent
                                                    .withOpacity(0.3),
                                                itemName: 'Cupcake',
                                                itemWeight: '19kg',
                                                number: '10',
                                                imagePath:
                                                    'assets/images/SCA_Cupcake2.png',
                                                innerPadding: 0,
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                              child: ItemsContainer(
                                                isSmall: false,
                                                color: Color(0xffFAE6DA),
                                                itemName: 'Strawberry',
                                                itemWeight: '19kg',
                                                number: '11.12',
                                                imagePath:
                                                    'assets/images/SCA_Strawberries2.png',
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 8.h),
                                              child: ItemsContainer(
                                                isSmall: true,
                                                color: Colors.deepPurpleAccent
                                                    .withOpacity(0.3),
                                                itemName: 'Cupcake',
                                                itemWeight: '12kg',
                                                number: '10.12',
                                                imagePath:
                                                    'assets/images/SCA_Cupcake2.png',
                                                innerPadding: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ]),
                              ),
                            )))
                  ]),
                ),
              ]))),
    );
  }
}
