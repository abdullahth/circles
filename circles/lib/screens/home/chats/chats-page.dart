import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/input-fields.dart';
import 'package:flutter/material.dart';

import 'components/listitem.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: EdgeInsets.all(8),
        child: SizedBox(
          height: proptionateHieght(65, MediaQuery.of(context).size.height),
          child: buildFormInputField(
              customHint: "Find a Chat!",
              controller: controller,
              label: "Search",
              icon: Icon(Icons.search)),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) => chatListItem(context),
        itemCount: 20,
      )
    ]);
  }
}
