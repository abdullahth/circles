import 'package:application/consts/themes.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    return SizedBox(
      width: deviceSizes.width,
      height: deviceSizes.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 12),
          Text(
            'Circles',
            style: theme.appBarTextStyle,
          ),
          const Spacer(),
          InkWell(
              onTap: () {},
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Badge(
                badgeColor: theme.primary,
                position: BadgePosition.bottomStart(bottom: -6, start: -6),
                badgeContent: Text(
                  '21',
                  style: theme.styleFive,
                ),
                child: Icon(
                  Icons.notifications,
                  color: theme.accent,
                  size: 24,
                ),
              )),
          const SizedBox(width: 12),
          InkWell(
              onTap: () {},
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Badge(
                badgeColor: theme.primary,
                position: BadgePosition.bottomStart(bottom: -6, start: -6),
                badgeContent: Text(
                  '4',
                  style: theme.styleFive,
                ),
                child: Icon(
                  Icons.message_outlined,
                  color: theme.accent,
                  size: 24,
                ),
              )),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
