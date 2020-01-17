import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neka/business/favorite_service.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/divider_component.dart';
import 'package:neka/view/components/property_component.dart';

class ProductComponent extends StatefulWidget {
  final int id;
  final String title;
  final String image;
  final double rating;
  final GestureTapCallback onTap;
  final bool isFav;

  // final VoidCallback favoriteOnPressedCallback;

  ProductComponent(
      {Key key,
      @required this.id,
      @required this.onTap,
      @required this.title,
      @required this.image,
      // @required this.favoriteOnPressedCallback,
      this.rating = 0,
      this.isFav = false})
      : super(key: key);

  @override
  _ProductComponentState createState() => _ProductComponentState();
}

class _ProductComponentState extends State<ProductComponent> {
  bool isFav = false;
  Icon favIcon;

  @override
  void initState() {
    isFav = widget.isFav ? widget.isFav : false;
    _setIconData(isFav);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        //height: 212,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
            border: Border.all(color: AppColor.Light),
            color: AppColor.White),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //TopRow
            Row(
              children: <Widget>[
                ClipOval(
                  child: Image.network(
                    'https://www.orbitmedia.com/wp-content/uploads/2016/08/Andy-Profile-600-400x400.png',
                    width: 34,
                    height: 34,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Emrah Yurtlu',
                          style: TextStyle(
                              fontFamily: FontFamily.AvenirMedium,
                              fontSize: 16,
                              color: AppColor.Dark)),
                      Text('18.12.2019 12:36',
                          style: TextStyle(
                              fontFamily: FontFamily.AvenirMedium,
                              fontSize: 12,
                              color: AppColor.Dark)),
                    ],
                  ),
                ),
                Spacer(),
                PopupMenuButton<String>(
                  icon: Icon(Icons.more_horiz),
                  onSelected: (String result) {
                    consoleLog(result);
                    setState(() {});
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                        value: 'Takip ettim.',
                        child: PropertyComponent(
                            content: "Takip et", iconName: "add_alert")),
                    PopupMenuItem<String>(
                      value: 'Şikayet ettim.',
                      child: PropertyComponent(
                          content: "Şikayet et", iconName: "gavel"),
                    ),
                    /*PopupMenuItem<String>(
                      value: 'Kaydettim.',
                      child: PropertyComponent(
                          content: "Kaydet", iconName: "bookmark"),
                    ),*/
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10),
              child: DividerComponent(),
            ),
            Row(
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
                          //height: 30,
                          width: MediaQuery.of(context).size.width - 130,
                          padding: EdgeInsets.only(top: 0, left: 5, bottom: 5),
                          child: Stack(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: widget.onTap,
                                  child: Text(
                                    widget.title,
                                    overflow: TextOverflow.fade,
                                    softWrap: true,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: FontFamily.AvenirMedium,
                                        fontSize: 15,
                                        color: AppColor.Header),
                                  )),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            width: 280,
                            child: Wrap(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.start,
                              runSpacing: 0,
                              spacing: 3,
                              children: <Widget>[
                                Image.asset('assets/images/del/bim_logo.png',
                                    width: 30),
                                Text(
                                  'Altunbilekler/Çankaya',
                                  style: TextStyle(
                                      fontFamily: FontFamily.AvenirBook,
                                      fontSize: 14,
                                      color: AppColor.Text),
                                ),
                                PropertyComponent(
                                    iconName: 'location_on',
                                    content: 'Sana 3km'),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '36,90TL',
                                  style: TextStyle(
                                      fontFamily: FontFamily.AvenirHeavy,
                                      fontSize: 16,
                                      color: AppColor.PriceDel,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '32,25TL',
                                    style: TextStyle(
                                        fontFamily: FontFamily.AvenirHeavy,
                                        fontSize: 16,
                                        color: AppColor.Primary),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: DividerComponent(),
            ),

            // Footer Actions
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 0, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 35,
                    child: FlatButton(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.thumb_up,
                              size: 14,
                              color: AppColor.Dark,
                            ),
                          ),
                          Text(
                            'Beğen',
                            style: TextStyle(color: AppColor.Dark, fontSize: 14),
                          ),
                        ],
                      ),
                      onPressed: () {
                        consoleLog("Beğendim");
                      },
                      //splashColor: AppColor.Primary,
                      highlightColor: AppColor.Primary.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: FlatButton(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.insert_comment,
                              size: 14,
                              color: AppColor.Dark,
                            ),
                          ),
                          Text(
                            'Yorum yap',
                            style: TextStyle(color: AppColor.Dark, fontSize: 14),
                          ),
                        ],
                      ),
                      onPressed: () {
                        consoleLog("Yorum yaptım");
                      },
                      //splashColor: AppColor.Primary,
                      highlightColor: AppColor.Primary.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: FlatButton(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.favorite,
                              size: 14,
                              color: AppColor.Dark,
                            ),
                          ),
                          Text(
                            'Favori',
                            style: TextStyle(color: AppColor.Dark, fontSize: 14),
                          ),
                        ],
                      ),
                      onPressed: () {
                        consoleLog("Favoriye aldım");
                      },
                      //splashColor: AppColor.Primary,
                      highlightColor: AppColor.Primary.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void _favOnPress() async {
    var result = await favIt(widget.id);
    setState(() {
      favIcon = result;
    });
  }

  _setIconData(bool isFav) {
    this.favIcon = isFav ? Icon(Icons.favorite) : Icon(Icons.favorite_border);
  }
}
