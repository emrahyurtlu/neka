import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/screens/menu_screen.dart';
import 'package:neka/view/screens/test_screen.dart';

import 'settings/colors.dart';
import 'settings/font_families.dart';

void main() {
  /*SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);*/
  runApp(Neka());
}

class Neka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Neka App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColor.Primary,
            backgroundColor: AppColor.White,
            buttonColor: AppColor.Primary,
            accentColor: AppColor.Secondary,
            scaffoldBackgroundColor: AppColor.White,
            fontFamily: FontFamily.AvenirBook),
        home: MenuScreen(),
        //home: TestScreen(),
      ),
    );
  }
}
