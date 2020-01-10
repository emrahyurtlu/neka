import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/view/components/text_input_component.dart';

import 'header_component.dart';

class SearchComponent extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const SearchComponent({Key key, this.controller, this.onChanged})
      : super(key: key);

  @override
  _SearchComponentState createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(color: AppColor.Text),
            color: Color.fromRGBO(250, 250, 250, 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Form(
                child: Row(
                  children: <Widget>[
                    TextInputComponent(
                      widget.controller,
                      width: MediaQuery.of(context).size.width - 22,
                      labelText: 'Ara',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      height: 50,
                      onChanged: widget.onChanged,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
