class User {
  late String id, name, username, bio, email, phone;
  late DateTime lastLogin, joinedIn;
  late List followedGroups,
      followedUsers,
      upcomingCircles,
      recommendedCircles,
      interestedInCircles,
      attendedCircles,
      createdCircles,
      followers;
  late Map notifications;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.bio,
    required this.email,
    required this.phone,
    required this.lastLogin,
    required this.joinedIn,
    required this.followedGroups,
    required this.followedUsers,
    required this.notifications,
    required this.upcomingCircles,
    required this.recommendedCircles,
    required this.interestedInCircles,
    required this.attendedCircles,
    required this.createdCircles,
    required this.followers,
  });

  User.fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    username = map['username'];
    bio = map['bio'];
    email = map['email'];
    phone = map['phone'];
    lastLogin = DateTime.parse(map['lastLogin']);
    joinedIn = DateTime.parse(map['joinedIn']);
    followedGroups = map['followedGroups'];
    followedUsers = map['followedUsers'];
    notifications = map['notifications'];
    upcomingCircles = map['upcomingCircles'];
    recommendedCircles = map['recommendedCircles'];
    interestedInCircles = map['interestedInCircles'];
    attendedCircles = map['attendedCircles'];
    createdCircles = map['createdCircles'];
    followers = map['followers'];
  }

  User.empty();

  Map<String, dynamic> get json => {
        'id': id,
        'name': name,
        'username': username,
        'bio': bio,
        'email': email,
        'phone': phone,
        'lastLogin': lastLogin,
        'joinedIn': joinedIn,
        'followedGroups': followedGroups,
        'followedUsers': followedUsers,
        'notifications': notifications,
        'upcomingCircles': upcomingCircles,
        'recommendedCircles': recommendedCircles,
        'interestedInCircles': interestedInCircles,
        'attendedCircles': attendedCircles,
        'createdCircles': createdCircles,
        'followers': followers,
      };
}
