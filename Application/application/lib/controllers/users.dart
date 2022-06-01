import 'package:application/models/user.dart';
import 'package:application/models/circle.dart';
import 'package:flutter/foundation.dart';

class UsersController with DiagnosticableTreeMixin, ChangeNotifier {
  final Circle? _upcomigCircle = Circle(
    id: '_id',
    title: 'This is the first Circle on Circles',
    bio:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis nibh vel ante fringilla, sed ullamcorper ante accumsan. Suspendisse ac urna et metus pulvinar commodo quis sed dui. Phasellus ante dui, vestibulum eu cursus a, imperdiet vel velit. Sed facilisis diam nec sapien convallis, eu fermentum est blandit. Etiam nec lobortis leo. Duis id posuere dolor. Morbi mauris nulla, congue in condimentum at, feugiat in augue. Mauris aliquam dapibus porta. In hac habitasse platea dictumst. Proin sed ante non lorem gravida egestas. Curabitur malesuada dui lobortis metus dictum mollis. Donec sit amet interdum orci. Donec placerat, nunc in iaculis bibendum, massa neque vehicula magna, in tempus leo dolor id sem. Mauris finibus convallis tortor.',
    attendingUsers: [
      "userOne",
      "userTwo",
      "userThree",
      "userFour",
      "userFive",
      "userSix",
      "userSeven",
      "userEight",
    ],
    createdIn: DateTime.now(),
    hostingTime: DateTime.now(),
  );

  Circle get upcomigCircle => _upcomigCircle!;

  User? _user = User(
    id: 'id',
    name: 'Briliant User',
    username: 'username',
    bio: 'Briliant Bio',
    email: 'Briliant Email',
    phone: 'Briliant Phone',
    lastLogin: DateTime.now(),
    joinedIn: DateTime.now(),
    followedGroups: ['0', '1', '2'],
    followedUsers: [
      "userOne",
      "userTwo",
      "userThree",
      "userFour",
    ],
    upcomingCircles: [],
    recommendedCircles: [],
    interestedInCircles: [],
    attendedCircles: [],
    createdCircles: [],
    followers: [],
    notifications: {},
  );

  User get logedInUser => _user!;

  Future<User?> fetchUserById(String id) async {
    try {
      return User(
        id: id,
        name: 'Briliant User',
        username: 'username',
        bio: 'Briliant Bio',
        email: 'Briliant Email',
        phone: 'Briliant Phone',
        lastLogin: DateTime.now(),
        joinedIn: DateTime.now(),
        followedGroups: [
          '0',
          '1',
          '2',
        ],
        followedUsers: [],
        upcomingCircles: [],
        recommendedCircles: [],
        interestedInCircles: [],
        attendedCircles: [],
        createdCircles: [],
        followers: [],
        notifications: {},
      );
    } catch (e) {
      print(e);
      return Future.value(null);
    }
  }

  Future<bool> login({required String email, required String password}) async {
    try {
      _user = User(
        id: 'id',
        name: 'Briliant User',
        username: 'username',
        bio: 'Briliant Bio',
        email: 'Briliant Email',
        phone: 'Briliant Phone',
        lastLogin: DateTime.now(),
        joinedIn: DateTime.now(),
        followedGroups: [
          '0',
          '1',
          '2',
        ],
        followedUsers: [],
        upcomingCircles: [],
        recommendedCircles: [],
        interestedInCircles: [],
        attendedCircles: [],
        createdCircles: [],
        followers: [],
        notifications: {},
      );
      return Future.value(true);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }
}
