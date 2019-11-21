import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/chip_component.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/product_component.dart';
import 'package:neka/view/components/property_component.dart';
import 'package:neka/view/components/smart_tab_component.dart';

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
      body: ListView(
        children: <Widget>[
          // Logo
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

          // İşletme Adı
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

          // İşletme Bilgileri
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

          // Aksiyon Butonları
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

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 30),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: ColorWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: <Widget>[
                Header(
                  'Ürünler',
                  fontSize: 16,
                  fontFamily: FontFamily.AvenirHeavy,
                  color: ColorText,
                ),

                // Tabs
                Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: SmartTab(
                    tabs: <Tab>[
                      Tab(
                        text: 'Hepsi',
                      ),
                      Tab(
                        text: 'Temel Gıda',
                      ),
                      Tab(
                        text: 'Temizlik',
                      ),
                      Tab(
                        text: 'Et Ürünleri',
                      ),
                      Tab(
                        text: 'Süt Ürünleri',
                      ),
                    ],
                    pages: <Page>[
                      Page(
                        child: Text('Hepsi'),
                      ),
                      Page(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ChipComponent(
                              label: 'Hepsi',
                              onTap: () {
                                consoleLog('Hepsi');
                              },
                            ),
                            ChipComponent(
                              label: 'Makarna',
                              onTap: () {
                                consoleLog('Makarna');
                              },
                            ),
                            ChipComponent(
                              label: 'Salça',
                              onTap: () {
                                consoleLog('Salça');
                              },
                            ),
                            ChipComponent(
                              label: 'Sıvı Yağ',
                              onTap: () {
                                consoleLog('Sıvı Yağ');
                              },
                            ),
                            ChipComponent(
                              label: 'Pirinç',
                              onTap: () {
                                consoleLog('Pirinç');
                              },
                            ),
                            ChipComponent(
                              label: 'Çay',
                              onTap: () {
                                consoleLog('Çay');
                              },
                            ),
                            ChipComponent(
                              label: 'Şeker',
                              onTap: () {
                                consoleLog('Şeker');
                              },
                            ),
                          ],
                        ),
                      ),
                      Page(
                        child: Text('Temizlik'),
                      ),
                      Page(
                        child: Text('Et Ürünleri'),
                      ),
                      Page(
                        child: Text('Süt Ürünleri'),
                      ),
                    ],
                    containerPadding: EdgeInsets.only(top: 10),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
