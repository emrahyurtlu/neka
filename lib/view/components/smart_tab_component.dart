import 'dart:core';

import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';

class SmartTab extends StatefulWidget {
  final List<Tab> tabs;
  final List<Page> pages;
  EdgeInsetsGeometry containerPadding;
  Color background;
  Color indicatorColor;
  Color labelColor;

  SmartTab({@required this.tabs, @required this.pages, this.containerPadding, this.background = ColorPrimary, this.indicatorColor = ColorWhite, this.labelColor = ColorWhite})
      : assert(tabs.isNotEmpty, "Tab length is equal to 0"),
        assert(pages.isNotEmpty, "Tab content length is equal to 0"),
        assert(tabs.length == pages.length,
        "Tab count and content count must be the same");

  @override
  _SmartTabState createState() => _SmartTabState();
}

class _SmartTabState extends State<SmartTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: widget.background,
          width: double.infinity,
          height: 50,
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: widget.tabs,
            key: GlobalKey(),
            labelPadding: EdgeInsets.only(left: 10, right: 10),
            indicatorColor: widget.indicatorColor,
            labelColor: widget.labelColor,
          ),
        ),
        Expanded(
          child: Container(
            padding: widget.containerPadding,
            child: TabBarView(
              controller: _tabController,
              children: widget.pages,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class Page extends StatelessWidget {
  final Widget child;

  Page({this.child});

  @override
  Widget build(BuildContext context) {
    return this.child;
  }
}