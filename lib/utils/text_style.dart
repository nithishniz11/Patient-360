import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/colors.dart';

extension TextExt on String{
  getText(){
    return Text(this,
    textAlign: TextAlign.center,
    style: size10Regular(textColor: secondaryTextColor),);
  }
}



extension SizeExt on double{
  addHSpace(){
    return SizedBox(height: this,
      );
  }
}


///10
TextStyle size10Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 10.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size10Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 10.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size10Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 10.sp,
    fontFamily: 'Avenir-Black');

///12
TextStyle size12Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 12.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size12Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 12.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size12Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 12.sp,
    fontFamily: 'Avenir-Black');

///14
TextStyle size14Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 14.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size14Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 14.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size14Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 14.sp,
    fontFamily: 'Avenir-Black');

///16
TextStyle size16Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 16.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size16Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 16.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size16Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 16.sp,
    fontFamily: 'Avenir-Black');

///18
TextStyle size18Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 18.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size18Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 18.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size18Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 18.sp,
    fontFamily: 'Avenir-Black');

///20
TextStyle size20Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 20.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size20Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 20.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size20Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 20.sp,
    fontFamily: 'Avenir-Black');

///24
TextStyle size24Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 24.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size24Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 24.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size24Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 24.sp,
    fontFamily: 'Avenir-Black');

///36
TextStyle size36Regular({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 36.sp,
    fontFamily: 'Avenir-Regular');

TextStyle size36Medium({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 36.sp,
    fontFamily: 'Avenir-Medium');

TextStyle size36Bold({Color? textColor}) => TextStyle(
    color: textColor ?? primaryTextColor,
    fontSize: 36.sp,
    fontFamily: 'Avenir-Black');

