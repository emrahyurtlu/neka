import 'package:flutter/material.dart';
import 'package:neka/datalayer/repos/favorite_repo.dart';
import 'package:neka/models/favorite_model.dart';
import 'package:neka/utils/console_log_util.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  FavoriteRepo repo;
  String _result = "No Result";

  @override
  void initState() {
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
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            RaisedButton(
              child: Text('INSERT'),
              onPressed: () async {
                var model = FavoriteModel(productId: 3000);
                var result = await repo.insert(model);
                consoleLog(result.toString());
                setState(() {
                  _result = result.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('GET'),
              onPressed: () async {
                var result = await repo.get(1);
                consoleLog(result.toString());
                setState(() {
                  _result = result.productId.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('GET LIST'),
              onPressed: () async {
                var result = await repo.getList();
                consoleLog(result.toString());
                setState(() {
                  _result = result.first.productId.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('UPDATE'),
              onPressed: () async {
                var model = FavoriteModel(productId: 3001);
                var result = await repo.update(model, 1);
                consoleLog(result.toString());
                setState(() {
                  _result = result.toString();
                });
              },
            ),
            RaisedButton(
              child: Text('DELETE'),
              onPressed: () async {
                var result = await repo.delete(1);
                consoleLog(result.toString());
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
}
