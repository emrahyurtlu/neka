import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/chip_component.dart';
import 'package:neka/view/components/header.dart';
import 'package:neka/view/components/property_component.dart';

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
            child: Center(
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                'Bim/Yeşiltepe Mah.',
                style: TextStyle(
                    color: ColorWhite,
                    fontSize: 16,
                    fontFamily: FontFamily.AvenirHeavy),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PropertyComponent(
                  content: '0312 456 8899',
                  iconName: 'phone',
                  color: ColorWhite,
                ),
                SizedBox(
                  width: 10,
                ),
                PropertyComponent(
                  content: 'Yeşiltepe Mah. 494. Sok No:5',
                  iconName: 'location_on',
                  color: ColorWhite,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ChipComponent(
                  label: 'Yol tarifi al',
                  onTap: () {
                    consoleLog('Yol tarifi alındı.');
                  },
                ),
                ChipComponent(
                  label: 'Takip et',
                  onTap: () {
                    consoleLog('Takip edildi.');
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: ColorWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Header(
                'Ürünler',
                fontSize: 16,
                fontFamily: FontFamily.AvenirHeavy,
                color: ColorText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
