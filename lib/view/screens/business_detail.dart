import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';

class BusinessDetail extends StatefulWidget {
  @override
  _BusinessDetailState createState() => _BusinessDetailState();
}

class _BusinessDetailState extends State<BusinessDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPrimary,
      appBar: AppBar(
        title: Text('Bim/Yeşiltepe Mah.'),
        backgroundColor: ColorWhite,
        textTheme: TextTheme(
          title: TextStyle(
              color: ColorPrimary,
              fontFamily: FontFamily.AvenirMedium,
              fontSize: 16),
        ),
        iconTheme: IconThemeData(color: ColorPrimary),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ClipOval(
                child: Container(
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorWhite,
                    ),
                    child: Image.asset(
                      'assets/images/del/bim_logo.png',
                    ))),
          ),
        ],
      ),
    );
  }
}
