import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/dimension_util.dart';
import 'package:neka/view/components/property_component.dart';

class ProductComponent extends StatefulWidget {
  final String documentID;
  final String title;
  final String image;
  final double rating;
  final GestureTapCallback onTap;
  final bool isFav;
  final VoidCallback favoriteOnPressedCallback;

  ProductComponent(
      {Key key,
        this.documentID,
        @required this.onTap,
        @required this.title,
        @required this.image,
        @required this.favoriteOnPressedCallback,
        this.rating = 0,
        this.isFav = false})
      : super(key: key);

  @override
  _ProductComponentState createState() => _ProductComponentState();
}

class _ProductComponentState extends State<ProductComponent> {
  bool isFav = false;
  IconData iconData;

  @override
  void initState() {
    isFav = widget.isFav ? widget.isFav : false;
    setIconData(isFav);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
          border: Border.all(color: Color.fromRGBO(241, 241, 241, 1)),
          color: ColorWhite),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              //Image Section
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: widget.onTap,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: widget.image,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        )),
                  )
                ],
              ),

              //Info Section
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Title Section
                  Container(
                    width: DimensionUtil(
                        context, EdgeInsets.only(top: 5, left: 10))
                        .setWidthRel(subtract: 100),
                    height: 30,
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Stack(
                      children: <Widget>[
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text(
                            widget.title,
                            maxLines: 2,
                            style: TextStyle(
                                fontFamily: FontFamily.AvenirMedium,
                                fontSize: 15,
                                color: ColorHeader),
                          ),
                        ),
                        //Favorite Button
                        Positioned(
                          width: 30,
                          height: 30,
                          child: Container(
                            color: Colors.white,
                            child: IconButton(
                              icon: Icon(iconData),
                              iconSize: 24,
                              padding: EdgeInsets.all(0),
                              onPressed: favOnPress,
                              color: ColorPrimary,
                            ),
                          ),
                          top: 0,
                          right: 0,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 304,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        runSpacing: 0,
                        spacing: 3,
                        children: <Widget>[
                          Image.asset('assets/images/del/bim_logo.png', width: 30),
                          Text('Bim/Yeşiltepe', style: TextStyle(fontFamily: FontFamily.AvenirBook, fontSize: 12, color: ColorText),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 304,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        runSpacing: 0,
                        spacing: 3,
                        children: <Widget>[
                          PropertyComponent(iconName: 'location_on',content: 'Mesafe 3km'),
                          PropertyComponent(iconName: 'access_time',content: 'Açık', color: ColorGreen),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Text('36,90TL', style: TextStyle(fontFamily: FontFamily.AvenirHeavy, fontSize: 16, color: ColorPriceDel, decoration: TextDecoration.lineThrough),),
                        ),
                        Text('32,25TL', style: TextStyle(fontFamily: FontFamily.AvenirHeavy, fontSize: 16, color: ColorPrimary),),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  void favOnPress() async {
    setState(() {

    });
    widget.favoriteOnPressedCallback();
  }

  setIconData(bool isFav) {
    this.iconData = isFav ? Icons.favorite : Icons.favorite_border;
  }
}
