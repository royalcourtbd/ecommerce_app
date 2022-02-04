import 'package:ecommerce_app/const/colors.dart';
import 'package:ecommerce_app/pages/profile_page/profile_without_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
          ),
          child: Text(
            'Profile',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        backgroundColor: AppColor.whiteColor,
      ),
      body: ProfileWithoutLogin(),
    );
  }
}
