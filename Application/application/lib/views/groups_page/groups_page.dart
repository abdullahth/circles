import 'package:application/components/group_card/group_card.dart';
import 'package:application/components/group_icon/group_icon.dart';
import 'package:application/components/loading_indicator/loading_indicator.dart';
import 'package:application/models/group.dart';
import 'package:flutter/material.dart';

import 'package:application/consts/themes.dart';
import 'package:application/controllers/groups.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  late String groupToken;

  @override
  void initState() {
    groupToken = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    final _groups = context.read<GroupsController>();
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SizedBox(
        width: deviceSizes.width,
        height: deviceSizes.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: deviceSizes.width,
                height: deviceSizes.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'trending_now'.tr,
                        style: theme.styleTwo,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'trending_now_msg'.tr,
                        style: theme.styleFour,
                      ),
                      Expanded(
                        child: FutureBuilder<List<Group>>(
                          future: _groups.getGroups(name: ''),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return LoadingIndicator(
                                width: deviceSizes.width * 0.4,
                                height: deviceSizes.height * 0.4,
                              );
                            }
                            List<Group> groups = snapshot.data!;
                            groups.sort((b, a) => a.followers.length
                                .compareTo(b.followers.length));
                            groups = groups.sublist(0, 4);

                            return ListView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                3,
                                (index) => GroupCard(groups[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: deviceSizes.height * 0.095,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Material(
                    borderRadius: BorderRadius.circular(5),
                    color: theme.accent.withOpacity(0.15),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextFormField(
                        onChanged: (v) {
                          setState(() {
                            groupToken = v;
                          });
                        },
                        onSaved: (v) {
                          setState(() {
                            groupToken = v ?? '';
                          });
                        },
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          hintText: "${'search'.tr}...",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              FutureBuilder<List<Group>>(
                future: _groups.getGroups(name: groupToken),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return LoadingIndicator(
                      width: deviceSizes.width,
                      height: deviceSizes.height,
                    );
                  }
                  List<Group> groups = snapshot.data!;
                  groups.sort((b, a) =>
                      a.followers.length.compareTo(b.followers.length));

                  return GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: groups
                        .map(
                          (group) => GroupIcon(
                            group,
                            width: deviceSizes.width * 0.3,
                            height: deviceSizes.height * 0.15,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
