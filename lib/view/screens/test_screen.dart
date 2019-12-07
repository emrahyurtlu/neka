import 'package:flutter/material.dart';
import 'package:neka/business/location_service.dart';
import 'package:neka/datalayer/repos/favorite_repo.dart';
import 'package:neka/utils/console_log_util.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  FavoriteRepo repo;
  String _result = "No Result";
  LocationService _locationService;

  @override
  void initState() {
    _locationService = LocationService();
    repo = FavoriteRepo();
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
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                'Check Permission',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                var details = await _locationService.getLocationDetails();
                consoleLog(details.toString());
                setState(() {
                  _result = details.toMap().toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
