import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/utils/console_log_util.dart';

class SearchFormComponent extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  final ValueChanged<String> onChanged;
  final String labelText;
  final double width;

  SearchFormComponent(
      {@required this.controller,
      @required this.onPressed,
      this.onChanged,
      this.labelText,
      this.width = 300});

  @override
  _SearchFormComponentState createState() => _SearchFormComponentState();
}

class _SearchFormComponentState extends State<SearchFormComponent> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
          border: Border.all(color: Colors.white),
          color: AppColor.White),
      child: Row(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Center(
                child: Column(
              children: <Widget>[
                SizedBox(
                  width: widget.width,
                  height: 48,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 0, top: 0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColor.LightGray,
                          ),
                          child: TextField(
                            controller: widget.controller,
                            keyboardType: TextInputType.text,
                            onChanged: widget.onChanged,
                            focusNode: _focusNode,
                            decoration: new InputDecoration(
                              labelStyle: TextStyle(color: AppColor.Text),
                              labelText: widget.labelText,
                              //hintText: "Birşeyler yazın",
                              hasFloatingPlaceholder: true,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 25, top: 5),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
          /*SizedBox(
            width: 10,
            height: 40,
          ),
          SizedBox(
              width: 60,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.Primary,
                ),
                child: FlatButton(
                  color: AppColor.Primary,
                  textColor: AppColor.White,
                  onPressed: widget.onPressed,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0)),
                  child: Icon(
                    Icons.search,
                    color: AppColor.White,
                  ),
                ),
              ))*/
        ],
      ),
    );
  }
}
