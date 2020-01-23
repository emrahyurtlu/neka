import 'package:flutter/material.dart';

alert(BuildContext context, String content, List<Widget> actions,
    {String title}) async {
  Widget widget;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        if (title != null) {
          widget = AlertDialog(
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(content),
            actions: actions,
          );
        } else {
          widget = AlertDialog(
            content: Text(content),
            actions: actions,
          );
        }

        return widget;
      });
}
