import 'package:flutter/material.dart';
import 'package:neka/business/location_service.dart';
import 'package:neka/datalayer/repos/favorite_repo.dart';
import 'package:neka/utils/firebase_ml_util.dart';

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
                'CLICK',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                var str = await mlReadText();
                /*String result3 = await FlutterBarcodeScanner.scanBarcode(
                    "#662FBF", "İptal", true, ScanMode.BARCODE);

                //var result = await readBarcode();
                setState(() {
                  //_result = result.toString();
                  _result = result3.toString();
                });*/
              },
            ),
          ],
        ),
      ),
    );
  }
}
