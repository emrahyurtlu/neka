import 'package:flutter/material.dart';

openBottomSheet(BuildContext context, Widget content) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return content;
      });
}
