import 'package:flutter/material.dart';

redirectTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

redirectToRoute(BuildContext context, String routeName) {
  Navigator.of(context).pushNamed(routeName);
}