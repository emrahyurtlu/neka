import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neka/business/appdata_service.dart';
import 'package:neka/business/location_service.dart';
import 'package:neka/models/location_model.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/utils/message_util.dart';
import 'package:neka/utils/route_util.dart';
import 'package:neka/utils/string_util.dart';
import 'package:neka/view/components/category_component.dart';
import 'package:neka/view/components/head_component.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/product_component.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/category_detail_screen.dart';
import 'package:neka/view/screens/change_location_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LocationService _locationService;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _locationService = LocationService();
    _setLocationLabel();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(children: <Widget>[
            HeadComponent(
              controller: _searchController,
              context: context,
            ),
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
                      color: AppColor.Text,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: AppColor.Text,
                      ),
                      Text(
                        //_addrLabel,
                        AppData.homeLocationLabel,
                        style: TextStyle(
                            fontFamily: FontFamily.AvenirBook,
                            fontSize: 14,
                            color: AppColor.Text),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: GestureDetector(
                            onTap: () {
                              redirectTo(context, ChangeLocationScreen());
                            },
                            child: Text(
                              'Değiştir',
                              style: TextStyle(
                                  fontFamily: FontFamily.AvenirBook,
                                  fontSize: 14,
                                  color: AppColor.Secondary),
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
                        color: AppColor.Text,
                        link: true,
                        linkOnTap: () {
                          redirectTo(
                              context,
                              CategoriesScreen(
                                showAppbar: true,
                              ));
                        },
                      )
                    ],
                  ),
                ),
                //Categories
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
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat2.png',
                        title: 'Temizlik',
                        onTap: () {
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat3.png',
                        title: 'Et Ürünleri',
                        onTap: () {
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat4.png',
                        title: 'Süt Ürünleri',
                        onTap: () {
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat5.png',
                        title: 'Kişisel Bakım',
                        onTap: () {
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat6.png',
                        title: 'Manav',
                        onTap: () {
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                      CategoryComponent(
                        imageUrl: 'assets/images/del/cat7.png',
                        title: 'Kuruyemiş',
                        onTap: () {
                          redirectTo(context, CategoryDetailScreen());
                        },
                      ),
                    ],
                  ),
                ),

                //Main Flow
                Header(
                  'Güncel',
                  link: false,
                  fontSize: 16,
                  fontFamily: FontFamily.AvenirHeavy,
                  color: AppColor.Text,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: '5 Adet 500gr  ya da Çaykur  Rize Çayı 1000gr',
                        image:
                            'https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg',
                        id: 1,
                      ),
                      ProductComponent(
                        onTap: () {
                          consoleLog('Hello');
                        },
                        title: 'Doğuş Filiz Çay 1000gr',
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
          ])),
    );
  }

  void _setLocationLabel() async {
    if (AppData.locationModel?.position != null) {
      setState(() {
        AppData.homeLocationLabel = createHomeLocationLabel(
            AppData.locationModel.address.adminArea,
            AppData.locationModel.address.subAdminArea);
      });
    } else {
      try {
        _locationService.getLocationDetails().then((LocationModel model) {
          AppData.locationModel = model;
          setState(() {
            AppData.homeLocationLabel = createHomeLocationLabel(
                model.address.adminArea, model.address.subAdminArea);
          });
        });
      } catch (e) {
        consoleLog(e);
        alert(
            context,
            'Konum hatası',
            'Konum bilginiz alınamadı. '
                'Cihazınızın konum servisinin açık olduğundan emin olunuz'
                '.',
            <Widget>[
              FlatButton(
                child: Text('Tamam'),
                onPressed: () => Navigator.pop(context),
              )
            ]);
      }
    }
  }

  void _search(String search) {
    consoleLog(search);
  }
}
