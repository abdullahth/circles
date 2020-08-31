import 'package:circles/config/dim-config.dart';
import 'package:flutter/material.dart';

Widget chatListItem(BuildContext context) {
  return GestureDetector(
    onTap: () {/**TODO:Opens the Chat Page*/},
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width:
                    proptionateHieght(23.3, MediaQuery.of(context).size.width),
                height:
                    proptionateHieght(40, MediaQuery.of(context).size.height),
                child: GestureDetector(
                  onTap: () {/**TODO:Opens the User Profile Page */},
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("assets/images/welcome-image.jpg"),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        text: "User name",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w900))),
                RichText(
                    text: TextSpan(
                        text: "Last Message",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 9)))
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(
                      text: "Stauts",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300))),
            )
          ],
        ),
      ],
    ),
  );
}
