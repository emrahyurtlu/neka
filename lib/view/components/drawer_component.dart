import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class DrawerComponent extends StatefulWidget {
  @override
  _DrawerComponentState createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Emrah Yurtlu',
              style: TextStyle(color: ColorWhite),
            ),
            accountEmail: Text('emrahyurtlu@gmail.com',
                style: TextStyle(color: ColorWhite)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: CachedNetworkImage(
                imageUrl:
                    'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg',
                width: 86,
                height: 86,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              )),
              radius: 50,
              backgroundColor: ColorLight,
            ),
            decoration: BoxDecoration(color: ColorPrimary),
          ),

          ListTile(
            title: Text("Profilim"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text("Favorilerim"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text("Bildirimler"),
            onTap: () {},
          ),
          Divider(),
          //Divider(),
          ListTile(
            title: Text("Çıkış"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
