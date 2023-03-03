import 'package:fakestore/feature/category/view/category_view.dart';
import 'package:fakestore/feature/home/home.dart';
import 'package:flutter/material.dart';

import '../../core/constants/themes/colors.dart';

import '../utils/text_styles.dart';

class TabbarView extends StatefulWidget {
  const TabbarView({super.key});

  @override
  State<TabbarView> createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    CategoryView(),
    const HomeView(),
    const HomeView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: Styles.normalBoldFontStyle(),
        unselectedLabelStyle: Styles.normalFontStyle(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.themeColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
