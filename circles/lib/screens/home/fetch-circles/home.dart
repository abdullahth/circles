import 'package:circles/constants/dummy-values.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/circle-list-item.dart';

class FetchCircles extends StatefulWidget {
  static String route = "FETCH_CIRCLES_ROUTE";
  @override
  _FetchCirclesState createState() => _FetchCirclesState();
}

class _FetchCirclesState extends State<FetchCircles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**The AppBar Here will not be applied by normal AppBar() but the SliverAppBar() */
      appBar: null,
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: () {
          return null;
        },
        child: CustomScrollView(slivers: [
          homePageAppBar(context),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      circleListItem(context, dummyCircles[index]),
                  childCount: dummyCircles.length)),
        ]),
      ),
    );
  }
}
