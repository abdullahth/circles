import 'package:circles/models/circle-model.dart';

class User {
  String name, bio, imageUrl, joinedIn;
  int numberOfCircles;
  List<Circle> createdCircles;
  Map<String, Circle> attendedCircles;
  Map<String, int> settings;
  Map<String, int> relations;
  List<int> intersets;

  User(
    this.name,
    this.bio,
    this.imageUrl,
    this.joinedIn,
    this.numberOfCircles,
    this.createdCircles,
    this.attendedCircles,
    this.settings,
    this.relations,
    this.intersets,
  );
}
