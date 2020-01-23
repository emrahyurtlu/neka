import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/message_util.dart';
import 'package:neka/view/components/text_input_component.dart';

class CartDetailComponent extends StatefulWidget {
  final int id;
  final String title;
  final String image;

  const CartDetailComponent({Key key, this.id, this.title, this.image})
      : super(key: key);

  @override
  _CartDetailComponentState createState() => _CartDetailComponentState();
}

class _CartDetailComponentState extends State<CartDetailComponent> {
  bool cbState;
  TextEditingController quantityController;

  @override
  void initState() {
    quantityController = TextEditingController();
    cbState = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      child: Container(
        width: double.infinity,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Checkbox
            Container(
              width: 30,
              height: 50,
              child: Center(
                child: Checkbox(
                  value: cbState,
                  onChanged: (bool value) {
                    setState(() {
                      cbState = value;
                    });
                  },
                ),
              ),
            ),

            //Image from Network
            InkWell(
              child: Container(
                width: 40,
                height: 50,
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: widget.image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )),
                ),
              ),
              onTap: () {
                setState(() {
                  cbState = !cbState;
                });
              },
            ),

            //Product Title
            InkWell(
              child: Container(
                height: 50,
                child: Center(
                  child: Text(
                    widget.title,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontFamily.AvenirMedium,
                        fontSize: 15,
                        color: AppColor.Text,
                        decoration: cbState
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  cbState = !cbState;
                });
              },
            ),

            //Quantity
            Container(
              width: 40,
              height: 50,
              //margin: EdgeInsets.only(left: 10),
              child: Center(
                child: TextInputComponent(
                  quantityController,
                  inputType: TextInputType.number,
                  textAlign: TextAlign.center,
                  contentPadding: EdgeInsets.all(0),
                  enabled: cbState == false,
                ),
              ),
            ),
          ],
        ),
      ),
      key: Key(widget.id.toString()),
      background: slideRightBackground(),
      secondaryBackground: slideLeftBackground(),
      /*onDismissed: (DismissDirection dd) =>
          consoleLog("DismissDirection: " + dd.toString()),*/
      // ignore: missing_return
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          bool res = await alert(
              context, "Silmek istediğinize emin misiniz?", <Widget>[
            FlatButton(
              child: Text(
                "İptal",
                // style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(
                "Sil",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ]);
          return res;
        } else {
          // TODO: Navigate to edit page;
        }
      },
    );
  }

  Widget slideRightBackground() {
    return Container(
      color: AppColor.Secondary,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.archive,
              color: Colors.white,
            ),
            Text(
              " Ertele",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: AppColor.Tertiary,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              "Sil",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}
