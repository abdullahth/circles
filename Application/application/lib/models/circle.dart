class Circle {
  late String id, title, bio;
  late List attendingUsers;
  late DateTime createdIn, hostingTime;

  Circle({
    required this.id,
    required this.title,
    required this.bio,
    required this.attendingUsers,
    required this.createdIn,
    required this.hostingTime,
  });

  Circle.fromMap(Map map) {
    id = map['_id'];
    title = map['title'];
    bio = map['bio'];
    attendingUsers = map['attendingUsers'];
    createdIn = map['createdIn'];
    hostingTime = map['hostingTime'];
  }

  Map get map => {
        '_id': id,
        'title': title,
        'bio': bio,
        'attendingUsers': attendingUsers,
        'createdIn': createdIn,
        'hostingTime': hostingTime,
      };
}
