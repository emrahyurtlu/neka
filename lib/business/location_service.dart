import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:neka/models/location_model.dart';
import 'package:neka/utils/console_log_util.dart';

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
    consoleLog("getLocation => " + position.toString());
    return position;
  }

  Future<Address> resolveAddress(Position position) async {
    var address = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(position.latitude, position.longitude));
    consoleLog("resolveAddress => " + address.first.toMap().toString());
    return address.first;
  }

  Future<LocationModel> getLocationDetails() async {
    Position position = await getLocation();
    Address address = await resolveAddress(position);
    var model = LocationModel(position: position, address: address);
    consoleLog("getLocationDetails => " + model.toString());
    return model;
  }
}
