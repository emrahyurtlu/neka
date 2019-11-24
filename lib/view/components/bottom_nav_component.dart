import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class BottomNavigationComponent extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  BottomNavigationComponent(
      {Key key, @required this.onTap, @required this.currentIndex})
      : super(key: key);

  @override
  _BottomNavigationComponentState createState() =>
      _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      unselectedItemColor: ColorDark,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedFontSize: 13,
      unselectedFontSize: 13,
      type: BottomNavigationBarType.fixed,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Anasayfa'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          title: Text('Yakındakiler'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.apps), title: Text('Kategoriler')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Ara')),
      ],
      backgroundColor: ColorWhite,
      selectedItemColor: ColorPrimary,
    );
  }
}
