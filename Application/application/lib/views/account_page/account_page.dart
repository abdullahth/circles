import 'package:application/components/circle_card/circle.dart';
import 'package:application/components/group_icon/group_icon.dart';
import 'package:application/components/loading_indicator/loading_indicator.dart';
import 'package:application/controllers/groups.dart';
import 'package:application/models/circle.dart';
import 'package:application/models/group.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:application/consts/themes.dart';
import 'package:application/controllers/users.dart';
import 'package:get/get.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    final _user = context.read<UsersController>();
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: deviceSizes.height,
          width: deviceSizes.width,
          child: Column(
            children: [
              SizedBox(
                width: deviceSizes.width,
                height: deviceSizes.height * 0.2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: deviceSizes.width * 0.2,
                            height: deviceSizes.height * 0.1,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: theme.primary,
                                ),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg"))),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            _user.logedInUser.name,
                            textAlign: TextAlign.center,
                            style: theme.styleTwo!.copyWith(fontSize: 16),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "@${_user.logedInUser.username}",
                            textAlign: TextAlign.center,
                            style: theme.styleFour!.copyWith(
                                fontSize: 12,
                                color: theme.accent.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          SizedBox(height: deviceSizes.height * 0.02),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                {
                                  'name': "followers".tr,
                                  'value': _user
                                      .logedInUser.followedUsers.length
                                      .toString(),
                                },
                                {
                                  'name': "following".tr,
                                  'value': _user
                                      .logedInUser.followedUsers.length
                                      .toString(),
                                },
                                {
                                  'name': "circles".tr,
                                  'value': _user
                                      .logedInUser.createdCircles.length
                                      .toString(),
                                },
                              ]
                                  .map((field) => Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              field.values.last,
                                              style: theme.styleTwo!.copyWith(
                                                  color: theme.primary),
                                            ),
                                            Text(
                                              field.values.first,
                                              style: theme.styleTwo!
                                                  .copyWith(fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                          const SizedBox(height: 22),
                          Expanded(
                            child: Row(
                              children: [
                                const SizedBox(width: 12),
                                Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      //TODO
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: theme.primary, width: 2)),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            const Spacer(flex: 6),
                                            Icon(Icons.edit,
                                                color: theme.primary, size: 16),
                                            const Spacer(),
                                            Text(
                                              'edit_profile'.tr,
                                              style: theme.styleFour!.copyWith(
                                                  color: theme.primary),
                                            ),
                                            const Spacer(flex: 6),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: InkWell(
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      //TODO
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.red.shade900),
                                      child: Center(
                                        child: Text(
                                          'logout'.tr,
                                          style: theme.styleFour!,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                              ],
                            ),
                            flex: 2,
                          ),
                          SizedBox(height: deviceSizes.height * 0.02),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: deviceSizes.height * 0.025),
              SizedBox(
                width: deviceSizes.width,
                height: deviceSizes.height * 0.175,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('your_followed_groups'.tr,
                          textAlign: TextAlign.start, style: theme.styleTwo),
                      const SizedBox(height: 12),
                      Text('your_followed_groups_msg'.tr,
                          textAlign: TextAlign.start,
                          style: theme.styleFour!.copyWith(
                              fontSize: 12,
                              color: theme.accent.withOpacity(0.5))),
                      const SizedBox(height: 12),
                      Expanded(
                        child: Center(
                          child: FutureBuilder<List<Group>>(
                              future: context
                                  .read<GroupsController>()
                                  .getGroupsById(
                                      _user.logedInUser.followedGroups),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: LoadingIndicator(
                                        width: deviceSizes.width * 0.3,
                                        height: deviceSizes.height * 0.1),
                                  );
                                }
                                final groups = snapshot.data!;
                                return Stack(
                                  children: [
                                    ...List.generate(
                                      groups.length < 5 ? groups.length : 5,
                                      (index) => Positioned(
                                        top: 0,
                                        bottom: 0,
                                        left: index * 32,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                    groups[index].accentColor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color:
                                                        theme.backgroundColor,
                                                    width: 2)),
                                            width: 64,
                                            height: deviceSizes.height * 0.065,
                                            child: Center(
                                              child: Container(
                                                width: 32,
                                                height:
                                                    deviceSizes.height * 0.0575,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: NetworkImage(
                                                          groups[index].icon)),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ).toList(),
                                    if (groups.length > 5) ...[
                                      Positioned(
                                        top: 0,
                                        bottom: 0,
                                        left: 5 * 32,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: theme.primary,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color:
                                                        theme.backgroundColor,
                                                    width: 2)),
                                            width: 64,
                                            height: deviceSizes.height * 0.065,
                                            child: Center(
                                              child: Text(
                                                  '+${groups.length - 5}',
                                                  style: theme.styleFour),
                                            ),
                                          ),
                                        ),
                                      )
                                    ]
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: deviceSizes.height * 0.025),
              SizedBox(
                width: deviceSizes.width,
                height: deviceSizes.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('your_upcoming_circle'.tr,
                          textAlign: TextAlign.start, style: theme.styleTwo),
                      const SizedBox(height: 12),
                      Text('your_upcoming_circle_msg'.tr,
                          textAlign: TextAlign.start,
                          style: theme.styleFour!.copyWith(
                              fontSize: 12,
                              color: theme.accent.withOpacity(0.5))),
                      const SizedBox(height: 12),
                      Expanded(
                        child: Center(
                          child: CircleCard(_user.upcomigCircle),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
