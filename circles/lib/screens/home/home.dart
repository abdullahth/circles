import 'dart:ui';

import 'package:circles/config/dim-config.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/circle-list-item.dart';

class HomePage extends StatefulWidget {
  static String route = "HOME_PAGE_ROUTE";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**The AppBar Here will not be applied by normal AppBar() but the SliverAppBar() */
      appBar: null,
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        homePageAppBar(context),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => CircleListItem(),
                childCount: 25)),
      ]),
    );
  }
}
