import 'package:location/location.dart';

class Circle {
  String header, bio, rules, createrUid;
  int freeSeates, occ, interestIndex;
  var scheduledTo;
  Location location;
  List<Uri> imageUris;

  Circle(
      this.header,
      this.bio,
      this.rules,
      this.imageUris,
      this.createrUid,
      this.freeSeates,
      this.occ,
      this.interestIndex,
      this.scheduledTo,
      this.location);
}
