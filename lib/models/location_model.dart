import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class LocationModel {
  int id;
  Position position;
  Address address;

  LocationModel({this.position, this.address});

  @override
  String toString() {
    return this.position.toString() + " " + this.address.toMap().toString();
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['latitude'] = position.latitude;
    map['longitude'] = position.longitude;
    map['city'] = address.adminArea;
    map['district'] = address.subAdminArea;
    map['full_addr'] = address.addressLine;
    return map;
  }

  LocationModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.position =
        Position(latitude: map['latitude'], longitude: map['longitude']);
    this.address = Address(
        adminArea: map['city'],
        subAdminArea: map['district'],
        addressLine: map['full_addr']);
  }
}
