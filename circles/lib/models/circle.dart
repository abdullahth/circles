import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Circle {
  final name, shortBio, createrUid;
  final int interestId, numSeates, occupied;
  final Location circleLocation;
  final List<AssetImage> images;

  Circle(this.name, this.shortBio, this.createrUid, this.interestId, this.numSeates, this.occupied, this.circleLocation, this.images);
}
