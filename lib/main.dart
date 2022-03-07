import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newflutter/Screens/fourth_screen.dart';
import 'package:newflutter/Screens/third_screen.dart';
import 'package:newflutter/Widget/mainwidget.dart';

import 'Screens/fifth_screen.dart';
import 'Screens/first_screen.dart';
import 'Screens/second_screen.dart';
import 'Screens/sixth_screen.dart';
import 'Widget/maintain_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/langs', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApps()),
  );
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        home: Main(),
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget,
          );
        },
      ),
    );
  }
}

class Main extends StatelessWidget {
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
          extendBodyBehindAppBar: false,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 10,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: CurvedNavigationBar(
              index: 2,
              buttonBackgroundColor: Colors.grey.withOpacity(0.05),
              backgroundColor: Colors.transparent,
              items: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25.h),
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'الاعدادات',
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'الصفحة الشخصية',
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.h),
                  child: Column(
                    children: [
                      Icon(
                        Icons.message,
                        size: 20,
                        color: Colors.grey,
                      ),
                      Text('المحادثات')
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.h),
                  child: Column(
                    children: [
                      Icon(
                        Icons.grid_view_sharp,
                        size: 20,
                        color: Colors.grey,
                      ),
                      Text('القائمة')
                    ],
                  ),
                ),
              ],
              onTap: (index) {
                //Handle button tap
              },
            ),
          ),
          body: FifthScreen()),
    );
  }
}
