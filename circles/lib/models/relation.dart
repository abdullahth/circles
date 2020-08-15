import 'package:flutter/material.dart';
class Relation {
  final Color backgroundColor;
  final String name, bio;
  final int  power, id;
  final AssetImage icon;

  Relation(this.id, this.name, this.bio,  this.power, this.icon,
      this.backgroundColor);
}

List<Relation> relations = [
  // The Relations Data will be stored in the app itself;

];
