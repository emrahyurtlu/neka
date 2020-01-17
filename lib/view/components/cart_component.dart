import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';

class CartComponent extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double width, height;

  const CartComponent(
      {Key key, this.title, this.onTap, this.width = 60, this.height = 60})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 85,
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.Primary
              ),
              child: ClipOval(
                  child: SizedBox(
                      child: Icon(Icons.shopping_cart, color: AppColor.White,),
                      width: width,
                      height: height)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(title,textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontFamily.AvenirBook,
                    fontSize: 13,
                    color: AppColor.Text,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
