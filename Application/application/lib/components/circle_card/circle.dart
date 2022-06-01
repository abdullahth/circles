import 'package:application/consts/themes.dart';
import 'package:application/models/circle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:application/controllers/users.dart';
import 'package:application/prefs/utils.dart';

class CircleCard extends StatelessWidget {
  final Circle circle;
  const CircleCard(this.circle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    final _users = context.read<UsersController>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: deviceSizes.width * 0.9,
        height: deviceSizes.height * 0.3,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.nestle.com/sites/default/files/asset-library/publishingimages/media/news-features/2016-january/150-years-feature.jpg"))),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [theme.backgroundColor, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0, 0.6],
            ),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [theme.backgroundColor, Colors.transparent],
                begin: const Alignment(1, -1),
                end: const Alignment(0, 0),
                stops: const [0, 0.5],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: SizedBox(
                    width: 40,
                    height: 48,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Spacer(flex: 2),
                          Icon(
                            Icons.person,
                            color: theme.accent,
                            size: 16,
                          ),
                          const Spacer(),
                          Text(circle.attendingUsers.length.toString(),
                              style: theme.styleFour!),
                          const Spacer(flex: 2),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: SizedBox(
                    width: deviceSizes.width * 0.9,
                    height: deviceSizes.height * 0.115,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    circle.title.length < 25
                                        ? circle.title
                                        : "${circle.title.substring(0, 25)}...",
                                    style:
                                        theme.styleTwo!.copyWith(fontSize: 20)),
                                const SizedBox(height: 4),
                                Text(
                                    circle.bio.length < 50
                                        ? circle.bio
                                        : "${circle.bio.substring(0, 50)}...",
                                    style: theme.styleFour!
                                        .copyWith(fontSize: 10)),
                                const SizedBox(height: 4),
                                SizedBox(
                                  width: deviceSizes.width * 0.5,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.watch_later_outlined,
                                          size: 12,
                                          color: theme.accent.withOpacity(0.5)),
                                      const SizedBox(width: 8),
                                      Text(
                                          Utils.displayTime(circle.hostingTime,
                                              withNumber: true),
                                          style: theme.styleFour!.copyWith(
                                              color: theme.accent
                                                  .withOpacity(0.5))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: deviceSizes.width * 0.2,
                                  child: Builder(builder: (context) {
                                    // TODO
                                    final attendedFollowingUsers =
                                        circle.attendingUsers.where((element) =>
                                            _users.logedInUser.followedUsers
                                                .contains(element));

                                    final images = [
                                      "https://www.bkacontent.com/wp-content/uploads/2020/10/Depositphotos_336730000_l-2015.jpg",
                                      "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                                      "https://media.newyorker.com/photos/606cd925407075a363d50dec/master/pass/Indurti-PersonofColorSomethingHappened.jpg",
                                    ];

                                    return Stack(
                                      children: [
                                        ...List.generate(
                                          3,
                                          (index) => Positioned(
                                            bottom: 12,
                                            left: index * 15,
                                            child: Center(
                                              child: Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            images[index])),
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        width: 2,
                                                        color: theme
                                                            .backgroundColor)),
                                              ),
                                            ),
                                          ),
                                        ).toList(),
                                        if (attendedFollowingUsers.length > 3)
                                          Positioned(
                                              bottom: 12,
                                              left: 45,
                                              child: Center(
                                                child: Container(
                                                  width: 25,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          theme.backgroundColor,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 2,
                                                          color: theme
                                                              .backgroundColor)),
                                                  child: Center(
                                                    child: Text(
                                                        '+${attendedFollowingUsers.length - 3}',
                                                        style: theme.styleFour),
                                                  ),
                                                ),
                                              )),
                                      ],
                                    );
                                  }),
                                )
                              ],
                            ),
                          )
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
    );
  }
}
