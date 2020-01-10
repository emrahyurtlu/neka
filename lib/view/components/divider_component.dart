import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class DividerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: AppColor.Light,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}
