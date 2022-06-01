import 'package:flutter/material.dart';

import 'package:application/consts/themes.dart';
import 'package:application/controllers/groups.dart';
import 'package:application/models/group.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class GroupPage extends StatefulWidget {
  final String id;
  const GroupPage(this.id, {Key? key}) : super(key: key);

  @override
  _GroupPage createState() => _GroupPage();
}

class _GroupPage extends State<GroupPage> {
  final tabs = [
    'All',
    'Friends Interested',
    'Near You',
    'With Offers',
    'Clubs',
    'Restaurants',
    'Attended',
  ];

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    final _groups = context.watch<GroupsController>();
    return FutureBuilder<Group?>(
        future: _groups.getGroupById(widget.id),
        builder: (_, snapshot) {
          if (!(snapshot.hasData)) {
            return const Scaffold();
          }

          final cat = snapshot.data!;
          return Scaffold(
            backgroundColor: theme.backgroundColor,
            body: ListView(
              children: [
                Container(
                  width: deviceSizes.width,
                  height: deviceSizes.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(cat.background),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [theme.backgroundColor, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: const [0.3, 1],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(-1, -1),
                          end: const Alignment(0, 0),
                          colors: [theme.backgroundColor, Colors.transparent],
                          stops: const [0, 0.4],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSizes.width * 0.1,
                            height: deviceSizes.height * 0.05,
                            child: InkWell(
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              onTap: () {
                                Get.back();
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                          const Spacer(flex: 2),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                const SizedBox(width: 12),
                                Text(
                                  cat.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40,
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      child: Container(
                                        width: 64,
                                        height: 64,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                              color: Colors.grey.shade500,
                                              blurRadius: 15,
                                              spreadRadius: 1,
                                              offset: const Offset(4, 4),
                                            ),
                                            const BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 15,
                                              spreadRadius: 1,
                                              offset: Offset(-4, -4),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            size: 24,
                                            color: theme.backgroundColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 12),
                                  Text(
                                    cat.desc,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  SizedBox(
                                    width: deviceSizes.width * 0.2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          size: 12,
                                          color: Colors.white.withOpacity(0.35),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          cat.followers.length.toString(),
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.35),
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: deviceSizes.height * 0.05),
                SizedBox(
                  width: deviceSizes.width,
                  height: deviceSizes.height * 0.1,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (_, i) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentIndex = i;
                          });
                        },
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tabs[i],
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 16,
                                color: currentIndex == i
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(height: 6),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                              width: currentIndex != i ? 0 : 24,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceSizes.width,
                  height: deviceSizes.height * 0.9,
                ),
              ],
            ),
          );
        });
  }
}
