import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffee_bulk/constants/colors.dart';
import 'package:coffee_bulk/screens/coffee_screen.dart';
import 'package:coffee_bulk/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text("Favorite"),
    Text("Notification"),
    Text("Notification"),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: BlurryContainer(
        // height: 120,
        blur: 2,
        elevation: 0,
        color: Colors.transparent,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Colors.transparent, // <-- This works for fixed
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Iconsax.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.shopping_bag), label: ''),
              BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.notification), label: ''),
            ],
            onTap: _onItemTap),
      ),
    );
  }
}
