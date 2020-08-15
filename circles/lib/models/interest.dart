import 'package:flutter/material.dart';

class Interest {
  final int id, followrs;
  final String name, bio;
  final AssetImage icon;
  final Color backgroundColor;

  Interest(this.id, this.followrs, this.name, this.bio, this.icon,
      this.backgroundColor);
}

List<Interest> interests = [
  // The Relations Data will be stored in the app itself but
  // the followers number will be fetched from Firebase;
];
