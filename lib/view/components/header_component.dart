import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/dimension_util.dart';
import 'package:neka/view/components/conditional_component.dart';

class Header extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final bool link;
  final VoidCallback linkOnTap;
  final String linkLabel;

  const Header(this.text,
      {this.fontFamily,
      this.fontSize,
      this.color,
      this.link = false,
      this.linkLabel = 'Hepsi',
      this.linkOnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DimensionUtil(context).setWidthRel(subtract: 20),
      child: Stack(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
                fontFamily: fontFamily, fontSize: fontSize, color: color),
          ),
          ConditionalComponent(
            condition: link,
            otherWise: SizedBox(
              width: 0,
              height: 0,
            ),
            child: Positioned(
              right: 0,
              top: 2,
              child: GestureDetector(
                onTap: linkOnTap,
                child: Row(
                  children: <Widget>[
                    Text(
                      linkLabel,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: FontFamily.AvenirBook,
                          color: ColorSecondary),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: ColorSecondary,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
