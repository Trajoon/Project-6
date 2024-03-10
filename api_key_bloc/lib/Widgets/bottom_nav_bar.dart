import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/view/Category/category_view.dart';
import 'package:api_key_bloc/view/Explore/explore_view.dart';
import 'package:api_key_bloc/view/Product/Product_view.dart';
import 'package:api_key_bloc/view/Profile/Profile_view.dart';
import 'package:flutter/material.dart';

class BottomNavBarr extends StatefulWidget {
  BottomNavBarr({super.key});

  @override
  State<BottomNavBarr> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarr> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const ProductView(),
    const ExploreView(),
    const CategoryView(),
      ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Platzi.pageColor,
        selectedItemColor: Platzi.helpColor,
        unselectedItemColor: Platzi.mainColor,
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Platzi.helpColor),
            icon: Icon(Icons.home),
            backgroundColor: Colors.white,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, color: Platzi.helpColor),
            backgroundColor: Colors.white,
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.align_horizontal_left, color: Platzi.helpColor),
            backgroundColor: Colors.white,
            icon: Icon(Icons.align_horizontal_left),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person, color: Platzi.helpColor),
            backgroundColor: Colors.white,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}