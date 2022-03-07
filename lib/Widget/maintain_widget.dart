import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'denial.dart';

class MaintainWidget extends StatelessWidget {

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
      height: 115.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                    child: Text('نوع الطلب : '),
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                ),
                Container(
                    child: Text('وصف الطلب :')),
                SizedBox(
                  height: 10.h,
                ),
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
                    Text('مستعحل'),
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
                text: 'رفض',
                colorText: Color(0xffb13232),
                colorStrok: Color(0xff9f0303),
              ),
              SizedBox(
                height: 10,
              ),
              Denialwidget(
                text: 'موافقة',
                colorText: Color(0xff569f03),
                colorStrok: Color(0xff569f03),
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
