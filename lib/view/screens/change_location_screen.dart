import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/styles.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeLocationScreen extends StatefulWidget {
  @override
  _ChangeLocationScreenState createState() => _ChangeLocationScreenState();
}

class _ChangeLocationScreenState extends State<ChangeLocationScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _cameraPosition =
      CameraPosition(target: LatLng(39.797917, 32.942895), zoom: 6);
  final _markers = <Marker>[];

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);

    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(
          'Konumunuz belirlemek için harita üzerinde bir yere tıklayınız.'),
    ));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Konumunuz", style: AppStyle.AppBarTextStyle),
        backgroundColor: ColorWhite,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorPrimary),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                child: GoogleMap(
                  mapToolbarEnabled: true,

                  myLocationEnabled: true,
                  markers: Set.from(_markers),
                  onTap: (LatLng location) {
                    setState(() {
                      _markOnMap(location);
                      _saveLocation(location);
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text('Konumunuz belirlendi.'),
                      ));
                    });
                  },
                  onMapCreated: _onMapCreated,
                  onCameraMove: (CameraPosition pos) {
                    setState(() {
                      _markOnMap(pos.target);
                    });
                  },
                  initialCameraPosition: _cameraPosition,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _markOnMap(LatLng location) {
    consoleLog('Mark on map: ${location.toString()}');
    _markers.clear();
    _markers.add(Marker(markerId: MarkerId('Here'), position: location));
    _saveLocation(location);
  }

  void _saveLocation(LatLng location) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var address = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(location.latitude, location.longitude));

    prefs.setDouble("latitude", location.latitude);
    prefs.setDouble("longitude", location.longitude);
    prefs.setString("city", address.first.adminArea);
    prefs.setString("district", address.first.subAdminArea);
  }
}
