import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/cart_component.dart';
import 'package:neka/view/components/head_component.dart';
import 'package:neka/view/components/header_component.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Sepetlerim'),
        backgroundColor: AppColor.White,
        textTheme: TextTheme(
          title: TextStyle(
              color: AppColor.Primary,
              fontFamily: FontFamily.AvenirMedium,
              fontSize: 16),
        ),
        iconTheme: IconThemeData(color: AppColor.Primary),
      ),*/
      body: Padding(
        padding: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 5),
        child: ListView(
          children: <Widget>[
            HeadComponent(
              controller: _searchController,
              context: context,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Header(
                'Sepetlerim',
                fontSize: 16,
                fontFamily: FontFamily.AvenirHeavy,
                color: AppColor.Text,
                linkOnTap: () {
                  consoleLog('Sepetlerim');
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
                      CartComponent(
                        title: 'Aylık Sepetim',
                        width: 70,
                        height: 70,
                        onTap: () {
                          // redirectTo(context, CategoryDetailScreen());
                          consoleLog('Sepet: Aylık Sepetim');
                        },
                      ),
                      CartComponent(
                        title: 'Deterjan Sepetim',
                        width: 70,
                        height: 70,
                        onTap: () {
                          // redirectTo(context, CategoryDetailScreen());
                          consoleLog('Sepet: Deterjan Sepetim');
                        },
                      ),
                      CartComponent(
                        title: 'Kahvaltılık Sepetim',
                        width: 70,
                        height: 70,
                        onTap: () {
                          // redirectTo(context, CategoryDetailScreen());
                          consoleLog('Sepet: Kahvaltılık Sepetim');
                        },
                      ),
                      CartComponent(
                        title: 'Kasap Sepetim',
                        width: 70,
                        height: 70,
                        onTap: () {
                          // redirectTo(context, CategoryDetailScreen());
                          consoleLog('Sepet: Kasap Sepetim');
                        },
                      ),
                      CartComponent(
                        title: 'Ertelenenler',
                        bgColor: AppColor.Secondary,
                        width: 70,
                        height: 70,
                        onTap: () {
                          consoleLog('Sepet: Ertelenenler');
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
