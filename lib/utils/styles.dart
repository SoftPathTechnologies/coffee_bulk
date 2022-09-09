import 'package:coffee_bulk/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static Color primaryColor = kPrimaryColor;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFF526799);
  static TextStyle textStyle =
      TextStyle(fontSize: 16.sp, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStylel =
      TextStyle(fontSize: 26.sp, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21.sp, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17.sp,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14.sp,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500);
}
