import 'package:ecommerce_app/pages/categories/categories_page.dart';
import 'package:ecommerce_app/pages/main_page/main_page.dart';
import 'package:ecommerce_app/pages/profile_page/profile_page.dart';

import 'package:ecommerce_app/widgets/set_bottom_nav_icon.dart';
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
            icon: SetBottomNavIcon(
              assetImage: 'homepage.png',
              index: 0,
              currentIndex: currentIndex,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SetBottomNavIcon(
              assetImage: 'categories_icon.png',
              index: 1,
              currentIndex: currentIndex,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SetBottomNavIcon(
              assetImage: 'account_icon.png',
              index: 2,
              currentIndex: currentIndex,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
