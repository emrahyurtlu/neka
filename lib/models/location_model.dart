import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class LocationModel {
  final Position position;
  final Address address;

  LocationModel({this.position, this.address});

  @override
  String toString() {
    return this.position.toString() + " " + this.address.toMap().toString();
  }
}
