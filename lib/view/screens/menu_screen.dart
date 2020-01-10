import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/components/bottom_nav_component.dart';
import 'package:neka/view/components/drawer_component.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/home_screen.dart';
import 'package:neka/view/screens/near_me_screen.dart';
import 'package:neka/view/screens/search_screen.dart';

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
    CategoriesScreen(),
    SearchScreen(),
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
        appBar: AppBar(
          title: Text('Neka',
              style: TextStyle(
                  fontFamily: FontFamily.AvenirMedium,
                  fontSize: 16,
                  color: AppColor.Primary)),
          backgroundColor: AppColor.White,
          iconTheme: IconThemeData(color: AppColor.Primary),
        ),
        drawer: DrawerComponent(),
        body: _tabContents[currentTab],
        bottomNavigationBar: BottomNavigationComponent(
          currentIndex: currentTab,
          onTap: onTabTapped,
        ),
      ),
    );
  }
}
