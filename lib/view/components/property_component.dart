import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/utils/icon_util.dart';

class PropertyComponent extends StatelessWidget {
  IconData _iconData;
  Icon _icon;
  final String iconName;
  final String content;
  final Color color;
  double fontSize;
  double iconSize = 14;
  EdgeInsets padding;

  PropertyComponent.fromJson(Map<String, dynamic> json)
      : iconName = json["iconName"],
        content = json["content"],
        fontSize = 14,
        color = ColorText,
        padding = const EdgeInsets.all(0);

  PropertyComponent({
    @required this.iconName,
    @required this.content,
    this.color = ColorText,
    this.fontSize = 14,
    this.padding = const EdgeInsets.only(left: 2),
  })  : assert(iconName != null, "IconName cannot be null"),
        assert(content != null, "Content cannot be null");

  @override
  Widget build(BuildContext context) {
    this._iconData = getMaterialIconByName(iconName: iconName);
    this._icon = Icon(
      _iconData,
      size: this.iconSize,
      color: this.color,
    );
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        _icon,
        Padding(
          padding: padding,
          child: Text(
            content ?? "",
            softWrap: true,
            style: TextStyle(color: color),
          ),
        )
      ],
    );
  }
}
