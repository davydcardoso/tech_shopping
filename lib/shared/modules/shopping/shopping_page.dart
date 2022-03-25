import 'package:flutter/material.dart';
import 'package:tech_shopping/components/app_bar_app.dart';
import 'package:tech_shopping/shared/modules/shopping/components/body.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBarApp(),
        ),
        body: const BodyShopping(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Cetegory',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'interest',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.engineering),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.body,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
