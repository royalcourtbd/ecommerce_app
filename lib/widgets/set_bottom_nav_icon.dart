import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetBottomNavIcon extends StatelessWidget {
  final String assetImage;
  final int index;
  final int currentIndex;
  SetBottomNavIcon({
    required this.assetImage,
    required this.index,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$assetImage',
      height: 30.h,
      width: 30.w,
      color: index == currentIndex ? const Color(0xfffe516c) : Colors.black,
    );
  }
}
