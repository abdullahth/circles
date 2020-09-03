import 'package:circles/models/circle-model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CircleDetails extends StatefulWidget {
  Circle circle;
  static String route = "CIRCLE_DETAILS_ROUTE";
  CircleDetails({Circle circle}) {
    this.circle = circle;
  }
  @override
  _CircleDetailsState createState() => _CircleDetailsState(this.circle);
}

class _CircleDetailsState extends State<CircleDetails> {
  Circle circle;
  _CircleDetailsState(Circle circle) {
    this.circle = circle;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
