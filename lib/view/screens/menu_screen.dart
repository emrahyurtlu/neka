import 'package:flutter/material.dart';
import 'package:neka/view/components/bottom_nav_component.dart';
import 'package:neka/view/components/drawer_component.dart';
import 'package:neka/view/screens/cart_screen.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/home_screen.dart';
import 'package:neka/view/screens/near_me_screen.dart';

import 'add_item_screen.dart';
import 'home_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentTab = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _tabContents = [
    HomeScreen(),
    NearMeScreen(),
    CartScreen(),
    AddItemScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerComponent(),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: _tabContents[currentTab],
        ),
        bottomNavigationBar: BottomNavigationComponent(
          currentIndex: currentTab,
          onTap: onTabTapped,
        ),
      ),
    );
  }
}
