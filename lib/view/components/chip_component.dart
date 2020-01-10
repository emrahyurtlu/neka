import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class ChipComponent extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final Color backgroundColor;

  const ChipComponent(
      {Key key, this.label, this.onTap, this.backgroundColor = AppColor.Secondary})
      : super(key: key);

  @override
  _ChipComponentState createState() => _ChipComponentState();
}

class _ChipComponentState extends State<ChipComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Chip(
          label: Text(widget.label),
          backgroundColor: widget.backgroundColor,
          labelStyle: TextStyle(color: AppColor.White),
          labelPadding: EdgeInsets.only(left: 10, right: 10),
        ),
      ),
    );
  }
}
