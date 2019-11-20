import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/components/bottom_nav_component.dart';
import 'package:neka/view/components/bottom_sheet_component.dart';
import 'package:neka/view/components/drawer_component.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/home_partials/home_main.dart';
import 'package:neka/view/screens/near_me.dart';

import 'home_partials/home_main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _tabContents = [
    HomeMain(),
    NearMe(),
    Categories(),
  ];

  void onTabTapped(int index) {
    if (index == 3) {
      openBottomSheet(
          context,
          Column(
            children: <Widget>[Text('Selam')],
          ));
    }
    if (index != 3)
      setState(() {
        currentTab = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Title',
              style:
                  TextStyle(fontFamily: FontFamily.AvenirMedium, fontSize: 16, color: ColorPrimary)),
          backgroundColor: ColorWhite,
          iconTheme: IconThemeData(color: ColorPrimary),
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
