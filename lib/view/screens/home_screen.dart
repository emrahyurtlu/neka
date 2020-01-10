import 'package:cached_network_image/cached_network_image.dart';
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
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/product_component.dart';
import 'package:neka/view/components/search_form_component.dart';
import 'package:neka/view/screens/categories_screen.dart';
import 'package:neka/view/screens/category_detail_screen.dart';
import 'package:neka/view/screens/change_location_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LocationService _locationService;

  //String _addrLabel = "Konumunuz hazırlanıyor.";

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

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      child: ClipOval(
                          child: CachedNetworkImage(
                        imageUrl:
                            'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg',
                        width: 43,
                        height: 43,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )),
                      radius: 23,
                      backgroundColor: AppColor.LightGray,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - (120),
                  height: 50,
                  child: SearchFormComponent(
                    controller: _searchController,
                    onPressed: () => consoleLog(_searchController.text),
                    labelText: 'Ara...',
                    width: MediaQuery.of(context).size.width - (130),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        //side: BorderSide(color: Colors.red)
                    ),
                    child: Image.asset("assets/images/barcode.png", color: AppColor.White, width: 48, height: 48,),
                    onPressed: () {
                      consoleLog("Barkod taranıyor.");
                    },
                    color: AppColor.Primary,
                  ),
                ),
              ],
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
                  'Akışınız',
                  link: true,
                  fontSize: 16,
                  fontFamily: FontFamily.AvenirHeavy,
                  color: AppColor.Text,
                  /*linkLabel: 'Filtrele',
                  linkOnTap: () {
                    consoleLog('Filtrele');
                  },*/
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
