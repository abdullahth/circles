import 'package:flutter/material.dart';

import 'package:application/components/app_bar.dart';
import 'package:application/components/bottom_nav.dart';
import 'package:application/consts/themes.dart';
import 'package:application/views/account_page/account_page.dart';
import 'package:application/views/groups_page/groups_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
  final PageController pagesController = PageController(initialPage: 3);

  @override
  void initState() {
    currentIndex = 3;

    super.initState();
  }

  @override
  void dispose() {
    pagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme(context);
    final deviceSizes = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          SizedBox(
            width: deviceSizes.width,
            height: deviceSizes.height,
            child: Column(
              children: [
                const CustomAppBar(),
                Expanded(
                  child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pagesController,
                      children: const [
                        Scaffold(backgroundColor: Colors.red),
                        Scaffold(backgroundColor: Colors.white),
                        GroupsPage(),
                        AccountPage()
                      ]),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: deviceSizes.height * 0.025,
            left: 0,
            right: 0,
            child: CustomBottomNavBar(
              currentIndex: currentIndex,
              changeCallback: (i) {
                pagesController.animateToPage(i,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
                setState(() {
                  currentIndex = i;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
