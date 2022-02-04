import 'package:ecommerce_app/widgets/state_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String assetName;
  final bool isLast;

  ProfileItem({
    required this.assetName,
    this.subTitle,
    required this.title,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55.h,
          child: ListTile(
            leading: StateIcons(
              assetImage: assetName,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle!,
                    style: Theme.of(context).textTheme.caption,
                  )
                : null,
            trailing: Icon(
              Icons.chevron_right_outlined,
              size: 16.w,
            ),
          ),
        ),
        isLast ? Container() : Divider(),
      ],
    );
  }
}
