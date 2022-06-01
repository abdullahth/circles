import 'package:flutter/material.dart';

class Page {
    final int id;
    final String title, desc, route;
    final AssetImage backgroundImage;
    final List<AssetImage> images;


    Page({
      required this.id,
      required this.title,
      required this.desc,
      required this.route,
      required this.backgroundImage,
      required this.images,
    });
     
}
