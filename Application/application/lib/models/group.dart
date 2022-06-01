import 'package:flutter/material.dart';

class Group {
  late String id, name, desc, background, icon;
  late List<String> followers;
  late Color? accentColor;

  Group({
    required this.id,
    required this.background,
    required this.icon,
    required this.name,
    required this.desc,
    required this.followers,
    this.accentColor,
  });

  Group.fromMap(Map map) {
    id = map['_id'];
    name = map['name'];
    desc = map['desc'];
    followers = map['followers'];
    background = map['background'];
    icon = map['icon'];
    accentColor = Colors.red;
  }

  Map get json => {
        '_id': id,
        'name': name,
        'desc': desc,
        'followers': followers,
        'background': background,
        'icon': icon,
      };
}
