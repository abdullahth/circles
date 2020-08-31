import 'package:circles/screens/home/fetch-circles/home.dart';
import 'package:flutter/material.dart';

import 'chats/chats-page.dart';

class HomePage extends StatefulWidget {
  static String route = "HOME_PAGE_ROUTE";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [FetchCircles(), Chats(), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: true,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
