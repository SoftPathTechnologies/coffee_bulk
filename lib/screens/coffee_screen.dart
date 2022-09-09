import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffee_bulk/constants/colors.dart';
import 'package:coffee_bulk/models/coffee.dart';
import 'package:coffee_bulk/utils/layouts.dart';
import 'package:coffee_bulk/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeScreen extends StatefulWidget {
  Map<String, dynamic> coffeeDetails;

  CoffeeScreen({Key? key, required this.coffeeDetails}) : super(key: key);

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  bool smallIsSelected = false;
  bool mediumIsSelected = false;
  bool largeIsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(500),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "${widget.coffeeDetails['image']}")),
                            borderRadius: BorderRadius.circular(40.r)),
                      ),
                      Positioned(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 1),
                                        blurRadius: 5.r,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                        width: 1, color: Color(0xFF232831)),
                                    color: Colors.black),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xFF4D4F52),
                                ),
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 1),
                                      blurRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(18.r),
                                  border: Border.all(
                                      width: 1, color: Color(0xFF232831)),
                                  color: Colors.black),
                              child: Icon(
                                Iconsax.heart,
                                color: Color(0xFF4D4F52),
                              ),
                            ),
                          ],
                        ),
                      )),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: BlurryContainer(
                              blur: 20,
                              elevation: 10,
                              borderRadius: BorderRadius.circular(30.r),
                              height: AppLayout.getHeight(160.h),
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    //Name and Rating
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${widget.coffeeDetails['name']}",
                                            style: Styles.headLineStylel
                                                .copyWith(color: Colors.white),
                                          ),
                                          const Gap(5),
                                          Text(
                                              "with ${widget.coffeeDetails['with']}",
                                              style: Styles.headLineStyle2
                                                  .copyWith(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w100)),
                                          const Gap(20),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: kPrimaryColor,
                                                size: 30,
                                              ),
                                              Gap(15),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${widget.coffeeDetails['rating']}",
                                                    style: Styles.headLineStyle2
                                                        .copyWith(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                  ),
                                                  Gap(3),
                                                  Text(
                                                    "(6.986)",
                                                    style: Styles.textStyle
                                                        .copyWith(
                                                            color:
                                                                Colors.white70),
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Gap(20),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: AppLayout.getwidth(60.w),
                                                height:
                                                    AppLayout.getHeight(60.h),
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0, 1),
                                                      blurRadius: 5.r,
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  color: Color(0xFF101419),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Iconsax.coffee,
                                                        color: kPrimaryColor,
                                                      ),
                                                      Gap(6),
                                                      Text(
                                                        "Coffee",
                                                        style: Styles.textStyle
                                                            .copyWith(
                                                                color: Colors
                                                                    .white70,
                                                                fontSize:
                                                                    12.sp),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: AppLayout.getwidth(60.w),
                                                height:
                                                    AppLayout.getHeight(60.h),
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0, 1),
                                                      blurRadius: 5,
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  color: Color(0xFF101419),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.water_drop,
                                                        color: kPrimaryColor,
                                                      ),
                                                      Gap(6),
                                                      Text(
                                                        "${widget.coffeeDetails['with']}",
                                                        style: Styles.textStyle
                                                            .copyWith(
                                                                color: Colors
                                                                    .white70,
                                                                fontSize:
                                                                    12.sp),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(10),
                                          Container(
                                            width: AppLayout.getwidth(200.w),
                                            height: AppLayout.getHeight(40.h),
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(0, 1),
                                                    blurRadius: 5.r,
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                  ),
                                                ],
                                                color: Color(0xFF101419),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.r)),
                                            child: Center(
                                              child: Text(
                                                "Medium Roasted",
                                                style: Styles.textStyle
                                                    .copyWith(
                                                        color: Colors.white70,
                                                        fontSize: 12.sp),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )

                                    //Tags
                                  ],
                                ),
                              )))
                    ],
                  ),
                  Gap(40),
                  Text(
                    "Description",
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.white60, fontSize: 19.sp),
                  ),
                  Gap(10),
                  Text("${widget.coffeeDetails['desc']} ",
                      style: Styles.headLineStyle3.copyWith(
                          color: Colors.white60,
                          fontSize: 17.sp,
                          height: 1.5.h)),
                  Gap(40),
                  Text(
                    "Size",
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.white60, fontSize: 19.sp),
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            smallIsSelected = !false;
                            largeIsSelected = false;
                            mediumIsSelected = false;
                          });
                        },
                        child: Container(
                          height: 50.h,
                          width: AppLayout.getwidth(100.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: smallIsSelected
                                      ? kPrimaryColor
                                      : Colors.transparent),
                              color: Color(0xFF141921),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text("S",
                                style: Styles.textStyle.copyWith(
                                    color: smallIsSelected
                                        ? kPrimaryColor
                                        : Colors.white70,
                                    fontSize: 18.sp)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            smallIsSelected = false;
                            largeIsSelected = false;
                            mediumIsSelected = !false;
                          });
                        },
                        child: Container(
                          height: 50.h,
                          width: AppLayout.getwidth(100.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: mediumIsSelected
                                      ? kPrimaryColor
                                      : Colors.transparent),
                              color: Color(0xFF141921),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text("M",
                                style: Styles.textStyle.copyWith(
                                    color: mediumIsSelected
                                        ? kPrimaryColor
                                        : Colors.white70,
                                    fontSize: 18.sp)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            smallIsSelected = false;
                            largeIsSelected = !false;
                            mediumIsSelected = false;
                          });
                        },
                        child: Container(
                          height: 50.h,
                          width: AppLayout.getwidth(100.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: largeIsSelected
                                      ? kPrimaryColor
                                      : Colors.transparent),
                              color: Color(0xFF141921),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text("L",
                                style: Styles.textStyle.copyWith(
                                    color: largeIsSelected
                                        ? kPrimaryColor
                                        : Colors.white70,
                                    fontSize: 18.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Price",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white60, fontSize: 19),
                          ),
                          Gap(6),
                          Row(
                            children: [
                              Text(
                                "\$",
                                style: Styles.headLineStylel
                                    .copyWith(color: kPrimaryColor),
                              ),
                              Text(
                                "${widget.coffeeDetails['price']}",
                                style: Styles.headLineStylel
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: AppLayout.getwidth(200.w),
                        height: AppLayout.getHeight(60.h),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: Styles.headLineStylel
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
