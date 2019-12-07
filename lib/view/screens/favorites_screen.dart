import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/settings/styles.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/product_component.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorilerim", style: AppStyle.AppBarTextStyle),
        backgroundColor: ColorWhite,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorPrimary),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Header(
                  'Favorilerim',
                  fontSize: 16,
                  fontFamily: FontFamily.AvenirHeavy,
                  color: ColorText,
                  linkOnTap: () {
                    consoleLog('Favorilerim');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    ProductComponent(
                      onTap: () {
                        consoleLog('Hello');
                      },
                      title: 'Çaykur Rize Çayı 1000gr',
                      image:
                          'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                      id: 1,
                    ),
                    ProductComponent(
                      onTap: () {
                        consoleLog('Hello');
                      },
                      title: 'Doğuş Filiz Çay Çayı 1000gr',
                      image:
                      'https://productimages.hepsiburada.net/s/19/1500/9830599000114.jpg',
                      id: 2,
                    ),
                    ProductComponent(
                      onTap: () {
                        consoleLog('Hello');
                      },
                      title: 'Karali Dökme Çay 1000gr',
                      image:
                      'https://productimages.hepsiburada.net/s/25/500/10114532278322.jpg',
                      id: 3,
                    ),
                    ProductComponent(
                      onTap: () {
                        consoleLog('Hello');
                      },
                      title: 'Lipton Dökme Çay Yellow Label 1000gr',
                      image:
                      'https://productimages.hepsiburada.net/s/22/1500/9962145841202.jpg',
                      id: 4,
                    ),
                    ProductComponent(
                      onTap: () {
                        consoleLog('Hello');
                      },
                      title: 'Çaykur Kamelya Çayı 1000gr',
                      image:
                      'https://productimages.hepsiburada.net/s/25/500/10108396470322.jpg',
                      id: 5,
                    ),
                    ProductComponent(
                      onTap: () {
                        consoleLog('Hello');
                      },
                      title: 'Çaykur Kamelya Çayı 1000gr',
                      image:
                      'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                      id: 6,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
