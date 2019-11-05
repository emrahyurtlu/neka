import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/components/bottom_nav_component.dart';
import 'package:neka/view/components/drawer_component.dart';
import 'package:neka/view/screens/home_partials/home_main.dart';
import 'package:neka/view/screens/home_partials/near_me.dart';

import 'home_partials/home_main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  List<String> _titles = ["Akış", "Favorilerim", "Keşfet"];

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _tabContents = [
    HomeMain(),
    NearMe(),
    Text('Tab 3'),
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
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
          ],
        ),
        drawer: DrawerComponent(
            //user: AppData.user,
            ),
        body: _tabContents[_currentTab],
        bottomNavigationBar: BottomNavigationComponent(
          currentIndex: _currentTab,
          onTap: onTabTapped,
        ),
      ),
    );
  }
}
