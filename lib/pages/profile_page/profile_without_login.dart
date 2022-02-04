import 'package:ecommerce_app/const/colors.dart';
import 'package:ecommerce_app/widgets/profile_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWithoutLogin extends StatelessWidget {
  final topContainerHeight = 190.h;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerHeight,
          child: Column(
            children: [
              Container(
                height: topContainerHeight * 0.49.h,
                color: AppColor.dummyBGColor,
              ),
              Container(
                height: topContainerHeight * 0.34.h,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                title: 'Orders',
                subTitle: 'Check your orders',
                assetName: 'order.png',
                isLast: false,
              ),
              ProfileItem(
                title: 'Help Center',
                subTitle: 'Help regarding your recent purchase',
                assetName: 'help.png',
                isLast: false,
              ),
              ProfileItem(
                title: 'Wishlist',
                subTitle: 'Your most loved style',
                assetName: 'favorite_icon.png',
                isLast: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                title: 'Scan for coupon',
                assetName: 'qr-code.png',
                isLast: false,
              ),
              ProfileItem(
                title: 'Refer & Earn',
                assetName: 'refer.png',
                isLast: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
