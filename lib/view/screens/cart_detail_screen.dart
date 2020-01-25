import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/bottom_sheet_component.dart';
import 'package:neka/view/components/cart_detail_component.dart';
import 'package:neka/view/components/head_component.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/search_form_component.dart';

class CartDetailScreen extends StatefulWidget {
  final int cartId;

  const CartDetailScreen({Key key, this.cartId}) : super(key: key);

  @override
  _CartDetailScreenState createState() => _CartDetailScreenState();
}

class _CartDetailScreenState extends State<CartDetailScreen> {
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sepet Detayı")),
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
                'Aylık Sepetim',
                fontSize: 16,
                fontFamily: FontFamily.AvenirHeavy,
                color: AppColor.Text,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(
                    "Ürün Adı",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Adet",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            CartDetailComponent(
              id: 1,
              title: "Çaykur Rize Çayı 1000gr",
              image:
                  "https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg",
            ),
            CartDetailComponent(
              id: 2,
              title: "Doğuş Filiz Çay 1000gr",
              image:
              "https://productimages.hepsiburada.net/s/19/1500/9830599000114.jpg",
            ),
            CartDetailComponent(
              id: 3,
              title: "Karali Dökme Çay 1000gr",
              image:
              "https://productimages.hepsiburada.net/s/25/500/10114532278322.jpg",
            ),
            CartDetailComponent(
              id: 4,
              title: "Lipton Dökme Çay Yellow Label 1000gr",
              image:
              "https://productimages.hepsiburada.net/s/22/1500/9962145841202.jpg",
            ),
            CartDetailComponent(
              id: 5,
              title: "Çaykur Kamelya Çayı 1000gr",
              image:
              "https://productimages.hepsiburada.net/s/25/500/10108396470322.jpg",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: AppColor.White,
        ),
        onPressed: () {
          consoleLog("Sepete ekle butonuna tıklandı.");
          openBottomSheet(
              context,
              Container(
                padding: EdgeInsets.all(10),
                color: AppColor.White,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Header(
                      'Sepete Ürün Ekle',
                      fontSize: 16,
                      fontFamily: FontFamily.AvenirHeavy,
                      color: AppColor.Text,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SearchFormComponent(
                        controller: _searchController,
                        onPressed: () {},
                        labelText: 'Ürün Ara...',
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
