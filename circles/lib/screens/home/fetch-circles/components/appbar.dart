import 'dart:ui';

import 'package:circles/config/dim-config.dart';
import 'package:flutter/material.dart';

SliverAppBar homePageAppBar(BuildContext context) {
  final String userName = "User";
  final String url =
      "https://www.muralswallpaper.com/app/uploads/Green-Tropical-Plant-Wallpaper-Mural-Plain-820x532.jpg";
  final ImageProvider<Object> appBarBackgroundImage = NetworkImage(url);
  return SliverAppBar(
      expandedHeight:
          proptionateHieght(170, MediaQuery.of(context).size.height),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          width: 20,
          height: 20,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 2.0),
            child: Container(
              child: Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {/**TODO:Opens the User Profile Page */},
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: appBarBackgroundImage,
                    ),
                  ),
                  Spacer()
                ],
              ),
              color: Colors.red[500].withOpacity(0.1),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: appBarBackgroundImage,
            fit: BoxFit.cover,
          )),
        ),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 2),
          child: RichText(
            text: TextSpan(
                text: "Welcome Back, $userName",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
          ),
        ),
      ));
}
