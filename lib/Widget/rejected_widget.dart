import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'denial.dart';

class RejectedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 10,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ]),
      margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      width: double.infinity,
      height: 135.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('نوع الطلب :  طلب صالة '),
                Container(child: Text('وصف الطلب : بجميع خدماتها')),
                Container(child: Text('سبب الرفض : عدم توفر الخدمات')),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      size: 22,
                      color: Colors.grey[600],
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text('مستعجل'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset(
                      'assets/images/calender.png',
                      width: 18.w,
                      height: 18.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text('14-5-1443'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 35.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Denialwidget(
                text: ' الحالة :',
                colorText: Colors.transparent,
                colorStrok: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Denialwidget(
                text: 'مرفوض',
                colorText: Color(0xfffa3a3a),
                colorStrok: Color(0xfffa3a3a),
              ),
            ],
          )
        ],
      ),
    );
  }
}
