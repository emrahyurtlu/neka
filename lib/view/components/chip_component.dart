import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class ChipComponent extends StatefulWidget {
  final String label;
  final VoidCallback onTap;

  ChipComponent({@required this.label, @required this.onTap});

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
          backgroundColor: ColorSecondary,
          labelStyle: TextStyle(color: ColorWhite),
          labelPadding: EdgeInsets.only(left: 10, right: 10),
        ),
      ),
    );
  }
}
