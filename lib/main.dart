import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/screens/menu_screen.dart';

void main() => runApp(Neka());

class Neka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neka App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorPrimary,
        backgroundColor: ColorWhite,
        buttonColor: ColorPrimary,
        accentColor: ColorSecondary,
        scaffoldBackgroundColor: ColorWhite,
        fontFamily: FontFamily.AvenirBook
      ),
      home: Menu(),
    );
  }
}
