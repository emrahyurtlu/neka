import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/utils/route_util.dart';
import 'package:neka/view/components/head_component.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/store_component.dart';
import 'package:neka/view/screens/business_detail_screen.dart';

class NearMeScreen extends StatefulWidget {
  @override
  _NearMeScreenState createState() => _NearMeScreenState();
}

class _NearMeScreenState extends State<NearMeScreen> {
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: <Widget>[
          HeadComponent(
            controller: _searchController,
            context: context,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Header(
              'Yakındaki Marketler',
              fontSize: 16,
              fontFamily: FontFamily.AvenirHeavy,
              color: AppColor.Text,
              linkOnTap: () {
                consoleLog('Yakındaki İşletmeler');
              },
            ),
          ),
          StoreComponent(
              onTap: () {
                redirectTo(context, BusinessDetailScreen());
              },
              title: 'Bim/Yeşiltepe',
              image:
                  'https://seeklogo.com/images/B/Bim-logo-0CC436083A-seeklogo.com.png',
              rating: 4,
              favoriteOnPressedCallback: () {
                consoleLog('Bim/Yeşiltepe');
              }),
          StoreComponent(
              onTap: () {
                consoleLog('A101/Yeşiltepe');
              },
              title: 'Bim/Yeşiltepe',
              image:
                  'https://seeklogo.com/images/A/a101-logo-6BBDE7F94F-seeklogo.com.png',
              rating: 3,
              favoriteOnPressedCallback: () {
                consoleLog('Bim/Yeşiltepe');
              }),
          StoreComponent(
              onTap: () {
                consoleLog('Bim/Yeşiltepe');
              },
              title: 'Migros/Ftz Avm',
              image:
                  'https://seeklogo.com/images/M/Migros-logo-09BB1C8FEF-seeklogo.com.png',
              rating: 5,
              favoriteOnPressedCallback: () {
                consoleLog('Bim/Yeşiltepe');
              }),
          StoreComponent(
              onTap: () {
                consoleLog('Bim/Yeşiltepe');
              },
              title: 'Şok/Yeşilvadi',
              image:
                  'https://seeklogo.com/images/1/sok-super-market-logo-AA21518970-seeklogo.com.png',
              rating: 2,
              favoriteOnPressedCallback: () {
                consoleLog('Bim/Yeşiltepe');
              }),
          StoreComponent(
              onTap: () {
                consoleLog('Altunbilekler/Yeşiltepe');
              },
              title: 'Altunbilekler/Yeşiltepe',
              image:
                  'https://seeklogo.com/images/A/altunbilekler-logo-F3B12264FA-seeklogo.com.gif',
              rating: 5,
              favoriteOnPressedCallback: () {
                consoleLog('Bim/Yeşiltepe');
              }),
        ],
      ),
    );
  }
}
