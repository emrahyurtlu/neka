import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationService {
  Geolocator _geoLocator;

  LocationService() {
    this._geoLocator = Geolocator();
  }

  Future<bool> isLocationServiceEnabled() async {
    bool _result = await _geoLocator.isLocationServiceEnabled();
    return _result;
  }

  void getPermission() async {}

  Future<Position> getLocation() async {
    Position position = await _geoLocator.getCurrentPosition();
    consoleLog(position.toString());

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setDouble("latitude", position.latitude);
    prefs.setDouble("longitude", position.longitude);

    return position;
  }

  Future<Address> resolveAddress(Position position) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var address = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(position.latitude, position.longitude));
    prefs.setString("city", address.first.adminArea);
    prefs.setString("district", address.first.subAdminArea);
    return address.first;
  }
}
