import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/logo.png'),
      decoration: BoxDecoration(
        color: AppColor.Primary
      ),
    );
  }
}
