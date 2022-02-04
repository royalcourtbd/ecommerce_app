import 'package:ecommerce_app/const/colors.dart';
import 'package:ecommerce_app/pages/categories/categories_page.dart';
import 'package:ecommerce_app/pages/home_page/home_page.dart';
import 'package:ecommerce_app/pages/profile_page/profile_page.dart';
import 'package:ecommerce_app/pages/profile_page/profile_without_login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 14.5,
              letterSpacing: 0.15,
              color: AppColor.headline6,
            ),
            bodyText1: TextStyle(
              color: AppColor.bodyColor1,
              fontSize: 14,
            ),
            caption: TextStyle(color: AppColor.captionColor, fontSize: 11),
          ),
          fontFamily: 'Mulish',
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
