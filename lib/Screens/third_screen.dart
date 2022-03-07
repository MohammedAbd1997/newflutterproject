import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/accepted_maintain.dart';
import '../Widget/maintain_widget.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xfffafafa)));
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                "طلبات الصيانة المقبولة",
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Image.asset(
                'assets/images/arrow.png',
                width: 25.w,
                height: 25.h,
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: false,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    child: Column(
                      children: [
                        AgreeMaintain(
                          text: 'جاري العمل',
                          colorStrok: Color(0xffc3782d),
                          colorText: Color(0xffc3782d),
                        ),
                        AgreeMaintain(
                          text: ' متوقف',
                          colorStrok: Color(0xfffa3a3a),
                          colorText: Color(0xfffa3a3a),
                        ),
                        AgreeMaintain(
                          text: ' تم',
                          colorStrok: Color(0xff2fb472),
                          colorText: Color(0xff2fb472),
                        ),
                        AgreeMaintain(
                          text: 'جاري العمل',
                          colorStrok: Color(0xffc3782d),
                          colorText: Color(0xffc3782d),
                        ),
                        SizedBox(
                          height: 50.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
