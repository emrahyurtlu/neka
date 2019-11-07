import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';

class CategoryComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;
  final double width, height;

  const CategoryComponent({Key key, this.imageUrl, this.title, this.onTap, this.width = 60, this.height = 60}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //margin: EdgeInsets.only(left: 5, right: 5),
        width: 85,
        //height: 85,
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipOval(child: Image.asset(this.imageUrl, width: width, height: height)),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(title,
                  style: TextStyle(
                    fontFamily: FontFamily.AvenirBook,
                    fontSize: 13,
                    color: ColorText,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
