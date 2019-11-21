import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/utils/route_util.dart';
import 'package:neka/view/components/category_component.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/screens/category_detail_screen.dart';

class Categories extends StatefulWidget {
  final bool showAppbar;

  const Categories({Key key, this.showAppbar = false}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.showAppbar
          ? AppBar(
              title: Text('Kategoriler'),
              backgroundColor: ColorWhite,
              textTheme: TextTheme(
                title: TextStyle(
                    color: ColorPrimary,
                    fontFamily: FontFamily.AvenirMedium,
                    fontSize: 16),
              ),
              iconTheme: IconThemeData(color: ColorPrimary),
            )
          : null,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Header(
                'Kategoriler',
                fontSize: 16,
                fontFamily: FontFamily.AvenirHeavy,
                color: ColorText,
                linkOnTap: () {
                  consoleLog('Kategoriler');
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat1.png',
                        title: 'Temel Gıda',
                        width: 70,
                        height: 70,
                        onTap: () {
                          redirectTo(context, CategoryDetail());
                          consoleLog('Kategori: Temel Gıda');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat2.png',
                        title: 'Temizlik',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Temizlik');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat3.png',
                        title: 'Et Ürünleri',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Et Ürünleri');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat4.png',
                        title: 'Süt Ürünleri',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Süt Ürünleri');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat5.png',
                        title: 'Kişisel Bakım',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Kişisel Bakım');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat6.png',
                        title: 'Manav',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Manav');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat7.png',
                        title: 'Kuruyemiş',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Kuruyemiş');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat1.png',
                        title: 'Temel Gıda',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Temel Gıda');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat2.png',
                        title: 'Temizlik',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Temizlik');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat3.png',
                        title: 'Et Ürünleri',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Et Ürünleri');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat4.png',
                        title: 'Süt Ürünleri',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Süt Ürünleri');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat5.png',
                        title: 'Kişisel Bakım',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Kişisel Bakım');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat6.png',
                        title: 'Manav',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Manav');
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat7.png',
                        title: 'Kuruyemiş',
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Kategori: Kuruyemiş');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
