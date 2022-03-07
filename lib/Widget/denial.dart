import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Denialwidget extends StatelessWidget {
  Color colorText;
  Color colorStrok;
  String text;

  Denialwidget({this.colorText, this.colorStrok, this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      width: 88.w,
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1.5, color: colorText)),
      child: Text(
        text,
        style: TextStyle(color: colorStrok, fontSize: 14.sp),
      ),
    );
  }
}

//0xffb13232
//0xff9f0303
