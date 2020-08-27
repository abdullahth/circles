import 'package:circles/config/dim-config.dart';
import 'package:flutter/material.dart';

class CircleListItem extends StatelessWidget {
  const CircleListItem(
      // Circle Will be Added after Initializing Circle Model
      // Circle circle,
      {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 6),
      child: Container(
        width: double.infinity,
        height: proptionateHieght(100, MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(
                      text: "Circle Title", style: TextStyle(fontSize: 30))),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: proptionateWidth(60, MediaQuery.of(context).size.width),
                height:
                    proptionateHieght(45, MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  // image: DecorationImage(
                  //     image: AssetImage(
                  //         "assets/images/welocme-image.jpeg"))
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                left: 12,
                right: 10,
                child: Row(
                  children: [
                    RichText(text: TextSpan(text: "0 Seates Available")),
                    Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Container(
                          height: proptionateHieght(
                              20, MediaQuery.of(context).size.height),
                          width: proptionateHieght(
                              2, MediaQuery.of(context).size.width),
                          child: VerticalDivider(
                            color: Colors.white,
                          )),
                    ),
                    RichText(text: TextSpan(text: "XKm")),
                    Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Container(
                          height: proptionateHieght(
                              20, MediaQuery.of(context).size.height),
                          width: proptionateHieght(
                              2, MediaQuery.of(context).size.width),
                          child: VerticalDivider(
                            color: Colors.white,
                          )),
                    ),
                    RichText(text: TextSpan(text: "2/2/2020")),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
