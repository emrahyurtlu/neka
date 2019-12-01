import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:neka/models/abstract_model.dart';

class LocationModel implements AbstractModel {
  Position position;
  Address address;

  LocationModel({this.position, this.address});

  @override
  String toString() {
    return this.position.toString() + " " + this.address.toMap().toString();
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['latitude'] = position.latitude;
    map['longitude'] = position.longitude;
    map['city'] = address.adminArea;
    map['district'] = address.subAdminArea;
    map['full_addr'] = address.addressLine;
    return map;
  }

  LocationModel.from(Map<String, dynamic> map) {
    this.position =
        Position(latitude: map['latitude'], longitude: map['longitude']);
    this.address = Address(
        adminArea: map['city'],
        subAdminArea: map['district'],
        addressLine: map['full_addr']);
  }
}
