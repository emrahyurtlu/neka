import 'dart:io';

import 'package:android_intent/android_intent.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:neka/models/location_model.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Geolocator _geoLocator;

  LocationService() {
    this._geoLocator = Geolocator();
  }

  Future<void> openLocationSettingsScreen() async {
    if (Platform.isAndroid) {
      final AndroidIntent intent = new AndroidIntent(
        action: 'android.settings.LOCATION_SOURCE_SETTINGS',
      );
      await intent.launch();
    } else {
      await PermissionHandler().openAppSettings();
    }
  }

  /// Shows that location service status
  /// returns denied, disabled, granted, restricted, unknown
  Future<PermissionStatus> checkPermissionStatus() async {
    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.locationWhenInUse);
    consoleLog(permission.toString());
    return permission;
  }

  /// Shows that location service is enabled or not.
  Future<ServiceStatus> checkServiceStatus() async {
    ServiceStatus serviceStatus = await PermissionHandler()
        .checkServiceStatus(PermissionGroup.locationWhenInUse);
    return serviceStatus;
  }

  Future<Position> getLocation() async {
    PermissionStatus ps = await checkPermissionStatus();
    if (ps != PermissionStatus.granted) var rp = await requestPermission();

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

  Future<Map<PermissionGroup, PermissionStatus>> requestPermission() async {
    Map<PermissionGroup, PermissionStatus> result = await PermissionHandler()
        .requestPermissions([PermissionGroup.locationWhenInUse]);
    return result;
  }
}
