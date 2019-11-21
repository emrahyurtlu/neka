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
  final Widget icon;
  final Widget prefixIcon;
  final InputBorder border;
  ValueChanged<String> onChanged;

  TextInputComponent(this.controller,
      {this.width = 300,
      this.height = 60,
      this.inputType = TextInputType.text,
      this.labelText,
      this.hintText,
      this.icon = null,
      this.prefixIcon = null,
      this.border = null,
      this.onChanged,
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
            padding: EdgeInsets.only(bottom: 0),
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.inputType,
              maxLines: widget.maxLines,
              obscureText: widget.obscureText,
              enabled: widget.enabled,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: ColorText),
                  labelText: widget.labelText,
                  hintText: widget.hintText,
                  contentPadding: widget.contentPadding,
                  icon: widget.icon,
                  prefixIcon: widget.prefixIcon,
                  border: widget.border),
            ),
          ),
        ],
      ),
    );
  }
}
