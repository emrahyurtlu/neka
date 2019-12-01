import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:neka/datalayer/generic/base_repo.dart';
import 'package:neka/models/location_model.dart';
import 'package:neka/utils/console_log_util.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  BaseRepo repo;
  String _result = "No Result";

  @override
  void initState() {
    repo = BaseRepo();
    query();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  _result,
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            RaisedButton(
              child: Text('INSERT'),
              onPressed: () async {
                var model = LocationModel();
                model.position = Position(latitude: 1.11, longitude: 2.33);
                model.address = Address(
                    adminArea: 'Manisa',
                    subAdminArea: 'Salihli',
                    addressLine: 'Közde köfte');
                var result = await repo.insert(model);
                setState(() {
                  _result = result.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('GET'),
              onPressed: () async {
                var result = await repo.get(2);
                setState(() {
                  _result = result.address.adminArea;
                });
              },
            ),
            RaisedButton(
              child: Text('GET LIST'),
              onPressed: () async {
                var result = await repo.getList();
                setState(() {
                  _result = result.first.position.latitude.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('UPDATE'),
              onPressed: () async {
                var model = LocationModel();
                model.position = Position(latitude: 1.11, longitude: 2.33);
                model.address = Address(
                    adminArea: 'İzmir',
                    subAdminArea: 'Çeşme',
                    addressLine: 'Közde köfte');
                var result = await repo.update(model, 2);
                setState(() {
                  _result = result.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('DELETE'),
              onPressed: () async {
                var result = await repo.delete(2);
                setState(() {
                  _result = result.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  query() async {
    var model = LocationModel();
    model.position = Position(latitude: 1.11, longitude: 2.33);
    model.address = Address(
        adminArea: 'Kastamonu',
        subAdminArea: 'Çatalzeytin',
        addressLine: 'dsg dsgffds fds ds');
    var result = await repo.getList();
    consoleLog(result.toString());
  }
}
