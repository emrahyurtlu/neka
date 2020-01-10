import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/dimension_util.dart';
import 'package:neka/view/components/property_component.dart';

class StoreComponent extends StatefulWidget {
  final String documentID;
  final String title;
  final String image;
  final double rating;
  final GestureTapCallback onTap;
  final bool isFav;
  final VoidCallback favoriteOnPressedCallback;

  StoreComponent(
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
  _StoreComponentState createState() => _StoreComponentState();
}

class _StoreComponentState extends State<StoreComponent> {
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
          color: AppColor.White),
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
                                color: AppColor.Header),
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
                              color: AppColor.Primary,
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
                          PropertyComponent(iconName: 'location_on',content: 'Mesafe 3km'),
                          PropertyComponent(iconName: 'access_time',content: 'Açık', color: AppColor.Green),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: FlutterRatingBarIndicator(
                            rating: widget.rating,
                            itemCount: 5,
                            itemSize: 20,
                            emptyColor: AppColor.Dark,
                            fillColor: AppColor.Yellow,
                            itemPadding: EdgeInsets.only(right: 2),
                          ),
                        ),
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
