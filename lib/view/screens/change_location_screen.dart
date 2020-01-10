import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neka/business/appdata_service.dart';
import 'package:neka/models/location_model.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/styles.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/utils/string_util.dart';

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
    _setInitialCameraPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Konumunuz", style: AppStyle.AppBarTextStyle),
        backgroundColor: AppColor.White,
        centerTitle: false,
        iconTheme: IconThemeData(color: AppColor.Primary),
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
                  /*onCameraMove: (CameraPosition pos) {
                    setState(() {
                      _markOnMap(pos.target);
                    });
                  },*/
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
    var address = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(location.latitude, location.longitude));
    var model = LocationModel(
        position: Position(
            latitude: location.latitude, longitude: location.longitude),
        address: address.first);
    setState(() {
      AppData.locationModel = model;
      AppData.homeLocationLabel = createHomeLocationLabel(
          model.address.adminArea, model.address.subAdminArea);
    });
    consoleLog("_saveLocation => " + AppData.locationModel.toString());
  }

  void _setInitialCameraPosition() {
    var model = AppData.locationModel;
    if (model?.position != null) {
      setState(() {
        var here = LatLng(model.position.latitude, model.position.longitude);
        _cameraPosition = CameraPosition(
            target: LatLng(model.position.latitude, model.position.longitude),
            zoom: 11);
        _markers.add(Marker(markerId: MarkerId("here"), position: here));
      });
    }
  }
}
