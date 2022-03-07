import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/maintain_widget.dart';
import '../Widget/mainwidget.dart';

class SecondScreen extends StatelessWidget {
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
                "طلبات الصيانة",
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
                        MaintainWidget(),
                        MaintainWidget(),
                        MaintainWidget(),
                        MaintainWidget(),
                        MaintainWidget(),
                        MaintainWidget(),
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
