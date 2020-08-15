import 'package:circles/models/circle.dart';
import 'package:flutter/material.dart';

class User {
  final String name, email, phone, uid;
  final Map<int, List<String>> relationsMap;
  final List<Circle> circles;
  final Map<String, int> settingsMap;
  final AssetImage profilePic;

  User(this.name, this.email, this.phone, this.uid, this.relationsMap,
      this.circles, this.settingsMap, this.profilePic);
}

// This Dummy Data will be deleted after finishing auth Process

Map<int, List<String>> dummyUserRelationsMap = {};
Map<String, int> dummyUserSettingsMap = {};
List<Circle> dummyUserCirclesList = [];
User dummyUser = new User(
    "Dummy User",
    "Dummy Email",
    "Dummy Phone",
    "Dummy Uid",
    dummyUserRelationsMap,
    dummyUserCirclesList,
    dummyUserSettingsMap, new AssetImage(null));
