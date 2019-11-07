import 'package:flutter/material.dart';

class CategoryDetail extends StatefulWidget {
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            key: GlobalKey(),
            tabs: <Widget>[
              Tab(
                text: 'Hepsi',
              ),
              Tab(
                text: 'Temel Gıda',
              ),
              Tab(
                text: 'Temizlik',
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Text('sdfsf'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
