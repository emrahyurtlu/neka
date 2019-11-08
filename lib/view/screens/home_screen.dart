import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/components/bottom_nav_component.dart';
import 'package:neka/view/components/drawer_component.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/home_partials/home_main.dart';
import 'package:neka/view/screens/home_partials/near_me.dart';

import 'home_partials/home_main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _tabContents = [
    HomeMain(),
    NearMe(),
    Categories(),
    Text('Arama Ekranı'),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Title',
              style:
                  TextStyle(fontFamily: FontFamily.AvenirMedium, fontSize: 16)),
          backgroundColor: ColorWhite,
          centerTitle: true,
          iconTheme: IconThemeData(color: ColorText),
        ),
        drawer: DrawerComponent(),
        body: _tabContents[_currentTab],
        bottomNavigationBar: BottomNavigationComponent(
          currentIndex: _currentTab,
          onTap: onTabTapped,
        ),
      ),
    );
  }
}
