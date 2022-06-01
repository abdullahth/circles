import 'package:flutter/material.dart';

import 'package:application/consts/themes.dart';
import 'package:application/models/group.dart';
import 'package:application/views/group_page/group_page.dart';
import 'package:get/get.dart';

class GroupIcon extends StatelessWidget {
  final Group group;
  final double width, height;
  const GroupIcon(this.group,
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);

    return InkWell(
      onTap: () {
        Get.to(GroupPage(group.id));
      },
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: width,
              height: height * 2 / 3,
              decoration: BoxDecoration(
                color: group.accentColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: Container(
                width: width * 2 / 3,
                height: height * 1 / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(group.icon))),
              )),
            ),
            const Spacer(),
            Text(
              group.name,
              style: TextStyle(
                color: theme.accent,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
