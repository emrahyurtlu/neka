import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/search_form_component.dart';

class HeadComponent extends StatefulWidget {
  final TextEditingController controller;
  final BuildContext context;

  const HeadComponent({Key key, @required this.controller, @required this.context})
      : super(key: key);

  @override
  _HeadComponentState createState() => _HeadComponentState();
}

class _HeadComponentState extends State<HeadComponent> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Active User
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(0),
          child: FlatButton(
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: ClipOval(
                child: CachedNetworkImage(
              imageUrl:
                  'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg',
              width: 46,
              height: 46,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            )),
            onPressed: () {
              consoleLog("Drawer açılıyor.");
              Scaffold.of(widget.context).openDrawer();
            },
            color: AppColor.Primary,
          ),
        ),

        //SearchBox
        Container(
          width: MediaQuery.of(context).size.width - (120),
          height: 50,
          child: SearchFormComponent(
            controller: widget.controller,
            onPressed: () => consoleLog(widget.controller.text),
            labelText: 'Ara...',
            width: MediaQuery.of(context).size.width - (130),
          ),
        ),

        // Barkod Scanner Button
        Container(
          width: 50,
          height: 50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0),
              //side: BorderSide(color: Colors.red)
            ),
            child: Image.asset(
              "assets/images/barcode.png",
              color: AppColor.White,
              width: 48,
              height: 48,
            ),
            onPressed: () {
              consoleLog("Barkod taranıyor.");
            },
            color: AppColor.Primary,
          ),
        ),
      ],
    );
  }
}
