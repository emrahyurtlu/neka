import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/styles.dart';
import 'package:neka/utils/console_log_util.dart';

class ChangeLocationScreen extends StatefulWidget {
  @override
  _ChangeLocationScreenState createState() => _ChangeLocationScreenState();
}

class _ChangeLocationScreenState extends State<ChangeLocationScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Position position;

  static LatLng _center = LatLng(39.950266, 32.831180);
  static Marker _here = Marker(markerId: MarkerId('Now'), position: _center);
  final _markers = <Marker>[_here];

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    GetPosition().then((Position pos) => position = pos);
    super.initState();
  }

  Future<Position> GetPosition() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    consoleLog(position.toString());
    return position;
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
                  markers: Set.from(_markers),
                  onTap: (LatLng location) {
                    setState(() {
                      _center = location;
                      _markers.removeLast();
                      _markers.add(Marker(
                          markerId: MarkerId('Now'), position: location));
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text('Konumunuz belirlendi.'),
                      ));
                    });
                    consoleLog(location.toString());
                  },
                  onMapCreated: _onMapCreated,
                  mapToolbarEnabled: true,
                  myLocationButtonEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
