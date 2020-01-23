import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/components/cart_detail_component.dart';
import 'package:neka/view/components/head_component.dart';
import 'package:neka/view/components/header_component.dart';

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
            CartDetailComponent(
              id: 0,
              title: "Çaykur  Rize Çayı 1000gr",
              image:
                  "https://productimages.hepsiburada.net/s/18/432/9805392773170.jpg",
            ),
          ],
        ),
      ),
    );
  }

/*Widget slideRightBackground() {
    return Container(
      color: AppColor.Green,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.done,
              color: Colors.white,
            ),
            Text(
              " Tamamla",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: AppColor.Tertiary,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.archive,
              color: Colors.white,
            ),
            Text(
              "Ertele",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }*/
}
