import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class TextInputComponent extends StatefulWidget {
  final TextEditingController controller;
  final double width, height;
  final TextInputType inputType;
  final String labelText, hintText;
  final EdgeInsetsGeometry contentPadding;
  final int maxLines;
  final bool obscureText;
  final bool enabled;

  TextInputComponent(this.controller,
      {this.width = 300,
      this.height = 60,
      this.inputType = TextInputType.text,
      this.labelText,
      this.hintText,
      this.maxLines = 1,
      this.obscureText = false,
      this.enabled = true,
      this.contentPadding =
          const EdgeInsets.only(left: 25, top: 5, bottom: 5, right: 5)});

  @override
  _TextInputComponentState createState() => _TextInputComponentState();
}

class _TextInputComponentState extends State<TextInputComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.inputType,
              maxLines: widget.maxLines,
              obscureText: widget.obscureText,
              enabled: widget.enabled,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: ColorText),
                labelText: widget.labelText,
                hintText: widget.hintText,
                // border: InputBorder.none,
                contentPadding: widget.contentPadding,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
