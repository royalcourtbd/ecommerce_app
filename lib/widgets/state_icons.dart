import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StateIcons extends StatelessWidget {
  final String assetImage;

  final bool isSelected;
  StateIcons({required this.assetImage, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$assetImage',
      height: 30.h,
      width: 30.w,
      color: isSelected ? const Color(0xfffe516c) : Colors.black,
    );
  }
}
