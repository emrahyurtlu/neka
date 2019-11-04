import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

void processing(BuildContext context,
    {String message = "İşleminiz devam ediyor"}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            children: <Widget>[
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(ColorPrimary),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(message),
              )
            ],
          ),
        );
      });
}