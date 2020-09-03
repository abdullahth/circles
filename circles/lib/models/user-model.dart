import 'package:circles/models/circle-model.dart';

class User {
  String name, bio, imageUrl, joinedIn;
  int numberOfCircles;
  List<Circle> createdCircles;
  Map<String, Circle> attendedCircles;
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
    this.relations,
    this.intersets,
  );

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "bio": this.bio,
      "imageUrl": this.imageUrl,
      "joinedIn": this.joinedIn,
      "numberOfCircles": this.numberOfCircles,
      "createdCircles": this.createdCircles,
      "attendedCircles": this.attendedCircles,
      "relations": this.relations,
      "intersets": this.intersets,
    };
  }

  static User mapToUser(Map<String, dynamic> map) {
    return User(
      map["name"],
      map["bio"],
      map["imageUrl"],
      map["joinedIn"],
      map["numberOfCircles"],
      map["createdCircles"],
      map["attendedCircles"],
      map["relations"],
      map["intersets"],
    );
  }
}
