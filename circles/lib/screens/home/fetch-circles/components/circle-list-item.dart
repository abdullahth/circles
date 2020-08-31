import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/constants.dart';
import 'package:circles/models/circle-model.dart';
import 'package:circles/screens/details-screens/circle/circle-details.dart';
import 'package:flutter/material.dart';

Widget circleListItem(BuildContext context, Circle circle) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, CircleDetails.route,
          arguments: CircleDetails(circle: circle));
    },
    child: Padding(
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
                      text: circle.header, style: TextStyle(fontSize: 30))),
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
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: interests[circle.interestIndex].image,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                left: 12,
                right: 10,
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "${circle.freeSeates} Seates Available")),
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
                    // Distance Text will be modified with a method that will be in location-service.dart
                    RichText(text: TextSpan(text: "6Km")),
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
                    RichText(text: TextSpan(text: "${circle.scheduledTo}")),
                  ],
                ))
          ],
        ),
      ),
    ),
  );
}
