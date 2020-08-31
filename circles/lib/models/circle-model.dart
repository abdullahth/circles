import 'package:location/location.dart';

class Circle {
  String header, bio, rules, imageUrl, createrUid;
  int freeSeates, occ, interestIndex;
  var scheduledTo;
  Location location;

  Circle(
      this.header,
      this.bio,
      this.rules,
      this.imageUrl,
      this.createrUid,
      this.freeSeates,
      this.occ,
      this.interestIndex,
      this.scheduledTo,
      this.location);
}
