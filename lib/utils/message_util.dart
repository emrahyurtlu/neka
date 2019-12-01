import 'package:flutter/material.dart';

alert(
    BuildContext context, String title, String content, List<Widget> actions) {
  showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(content),
          actions: actions,
        );
      });
}
