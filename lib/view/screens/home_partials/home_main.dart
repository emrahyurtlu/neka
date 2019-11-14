import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/utils/route_util.dart';
import 'package:neka/view/components/category_component.dart';
import 'package:neka/view/components/header.dart';
import 'package:neka/view/components/product_component.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/category_detail_screen.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Your location
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Header(
                    'Konumunuz',
                    fontSize: 16,
                    fontFamily: FontFamily.AvenirHeavy,
                    color: ColorText,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: ColorText,
                    ),
                    Text(
                      'Ankara, Çankaya',
                      style: TextStyle(
                          fontFamily: FontFamily.AvenirBook,
                          fontSize: 14,
                          color: ColorText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                          onTap: () {
                            consoleLog('Lokasyon değiştir linkine tıklandı!');
                          },
                          child: Text(
                            'Değiştir',
                            style: TextStyle(
                                fontFamily: FontFamily.AvenirBook,
                                fontSize: 14,
                                color: ColorSecondary),
                          )),
                    ),
                  ],
                ),
              ),

              //Categories
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Header(
                      'Kategoriler',
                      fontSize: 16,
                      fontFamily: FontFamily.AvenirHeavy,
                      color: ColorText,
                      link: true,
                      linkOnTap: () {
                        redirectTo(context, Categories(showAppbar: true,));
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.only(top: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat1.png',
                      title: 'Temel Gıda',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat2.png',
                      title: 'Temizlik',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat3.png',
                      title: 'Et Ürünleri',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat4.png',
                      title: 'Süt Ürünleri',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat5.png',
                      title: 'Kişisel Bakım',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat6.png',
                      title: 'Manav',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                    CategoryComponent(
                      imageUrl: 'assets/images/del/cat7.png',
                      title: 'Kuruyemiş',
                      onTap: () {
                        redirectTo(context, CategoryDetail());
                      },
                    ),
                  ],
                ),
              ),

              //Main Flow
              Header(
                'Fırsatlar',
                link: true,
                fontSize: 16,
                fontFamily: FontFamily.AvenirHeavy,
                color: ColorText,
                linkLabel: 'Filtrele',
                linkOnTap: () {
                  consoleLog('Filtrele');
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        favoriteOnPressedCallback: () {
                          consoleLog('Hello');
                        }),
                    ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        favoriteOnPressedCallback: () {
                          consoleLog('Hello');
                        }),
                    ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        favoriteOnPressedCallback: () {
                          consoleLog('Hello');
                        }),
                    ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        favoriteOnPressedCallback: () {
                          consoleLog('Hello');
                        }),
                    ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        favoriteOnPressedCallback: () {
                          consoleLog('Hello');
                        }),
                    ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        favoriteOnPressedCallback: () {
                          consoleLog('Hello');
                        }),
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}
