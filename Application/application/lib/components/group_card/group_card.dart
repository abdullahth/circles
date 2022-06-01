import 'package:application/consts/themes.dart';
import 'package:application/models/group.dart';
import 'package:application/views/group_page/group_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupCard extends StatelessWidget {
  final Group group;
  const GroupCard(this.group, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.to(GroupPage(group.id));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12, top: 8, bottom: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: deviceSizes.width * 0.8,
            height: deviceSizes.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(group.background), fit: BoxFit.cover)),
            child: Container(
              width: deviceSizes.width * 0.8,
              height: deviceSizes.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, theme.backgroundColor],
                  stops: const [0, 0.9],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                width: deviceSizes.width * 0.8,
                height: deviceSizes.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1, -1),
                    end: const Alignment(0, 0),
                    colors: [theme.backgroundColor, Colors.transparent],
                    stops: const [0, 0.6],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: deviceSizes.width * 0.8,
                        height: deviceSizes.height * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                group.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "${group.desc.substring(0, 100)}...",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SizedBox(
                        width: deviceSizes.width * 0.1,
                        height: deviceSizes.height * 0.075,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Icon(Icons.favorite,
                                  color: theme.accent, size: 16),
                              const Spacer(),
                              Text(
                                "${group.followers.length}",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
