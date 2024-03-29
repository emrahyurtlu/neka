import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/chip_component.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/product_component.dart';
import 'package:neka/view/components/smart_tab_component.dart';

class CategoryDetailScreen extends StatefulWidget {
  @override
  _CategoryDetailScreenState createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void onTabTapped(int index) => setState(() {
        // _currentTab = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temel Gıda'),
        /*backgroundColor: AppColor.White,
        textTheme: TextTheme(
          title: TextStyle(
              color: AppColor.Primary,
              fontFamily: FontFamily.AvenirMedium,
              fontSize: 16),
        ),
        iconTheme: IconThemeData(color: AppColor.Primary),*/
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
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
              containerPadding: EdgeInsets.all(10),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 10),
                  child: Header(
                    'Ürünler',
                    fontSize: 16,
                    fontFamily: FontFamily.AvenirHeavy,
                    color: AppColor.Text,
                    linkOnTap: () {
                      consoleLog('Ürünler');
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
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        id: 1,
                      ),
                      ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                        'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        id: 2,
                      ),
                      ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                        'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        id: 3,
                      ),
                      ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                        'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        id: 4,
                      ),
                      ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Çaykur Kamelya Çayı 1000gr',
                        image:
                        'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
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
          )
        ],
      ),
    );
  }
}
