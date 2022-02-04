import 'package:ecommerce_app/pages/categories/categories_page.dart';
import 'package:ecommerce_app/pages/main_page/main_page.dart';
import 'package:ecommerce_app/pages/profile_page/profile_page.dart';

import 'package:ecommerce_app/widgets/state_icons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    MainPage(),
    CategoriesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.defaultSize;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        selectedLabelStyle: TextStyle(fontSize: 13.sp),
        currentIndex: currentIndex,
        selectedItemColor: Color(0xfffe516c),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        //type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: StateIcons(
              assetImage: 'homepage.png',
              isSelected: 0 == currentIndex,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: StateIcons(
              assetImage: 'categories_icon.png',
              isSelected: 1 == currentIndex,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: StateIcons(
              assetImage: 'account_icon.png',
              isSelected: 3 == currentIndex,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
