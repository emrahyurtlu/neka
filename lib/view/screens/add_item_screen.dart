import 'package:flutter/material.dart';
import 'package:neka/view/components/head_component.dart';

class AddItemScreen extends StatefulWidget {
  @override
  _AddItemScreenState createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListView(
        children: <Widget>[
          HeadComponent(
            controller: _searchController,
            context: context,
          ),
        ],
      ),
    );
  }
}
