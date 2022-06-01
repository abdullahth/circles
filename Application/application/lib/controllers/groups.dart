import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;

import 'package:application/models/group.dart';

class GroupsController with ChangeNotifier, foundation.DiagnosticableTreeMixin {
  List<Group>? _groups;

  List<Group> get categories => _groups ?? <Group>[];

  Future<bool> fetchGroups() async {
    _groups = <Group>[
      Group(
        name: "Sports",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '0',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-couple-runner-running-running-road-city-park-sport-people-exercising-lifestyle-concept_41380-471.jpg?w=996",
        icon:
            "https://cdn-icons.flaticon.com/png/512/3311/premium/3311579.png?token=exp=1653925172~hmac=ade4d3bf9c14a2d01313fbe5087cc93d",
        accentColor: Colors.green,
      ),
      Group(
        name: "Music",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '1',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/people-dance-nightclub-party-concert-listen-music-from-dj-stage-background_31965-26874.jpg?w=1060",
        icon: "https://cdn-icons-png.flaticon.com/512/2907/2907253.png",
        accentColor: Colors.red,
      ),
      Group(
        name: "Health",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '2',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17818.jpg?t=st=1653903000~exp=1653903600~hmac=a27546e3e88b40dd693ab978153dd44d84df86c54ca40ab90c807260cbcc26c4&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2966/2966486.png",
        accentColor: Colors.blueGrey,
      ),
      Group(
        name: "Traveling",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '3',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/female-tourists-hand-have-happy-travel-map_1150-7411.jpg?t=st=1653903084~exp=1653903684~hmac=caeb799c86350b162040522b055ee87593524dc7546446a3493260526b36b9e3&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2060/2060284.png",
        accentColor: Colors.teal,
      ),
      Group(
        name: "Meditation",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '4',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/mature-healthy-people-doing-yoga-park-group-people-exercising-green-grass_199620-12194.jpg?w=996",
        accentColor: Colors.orange.shade900,
        icon:
            "https://cdn-icons.flaticon.com/png/512/2773/premium/2773699.png?token=exp=1653925490~hmac=a5942e38725e30ecb62778c3040d0b67",
      ),
      Group(
        name: "Sports",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '0',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-couple-runner-running-running-road-city-park-sport-people-exercising-lifestyle-concept_41380-471.jpg?w=996",
        icon:
            "https://cdn-icons.flaticon.com/png/512/3311/premium/3311579.png?token=exp=1653925172~hmac=ade4d3bf9c14a2d01313fbe5087cc93d",
        accentColor: Colors.green,
      ),
      Group(
        name: "Music",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '1',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/people-dance-nightclub-party-concert-listen-music-from-dj-stage-background_31965-26874.jpg?w=1060",
        icon: "https://cdn-icons-png.flaticon.com/512/2907/2907253.png",
        accentColor: Colors.red,
      ),
      Group(
        name: "Health",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '2',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17818.jpg?t=st=1653903000~exp=1653903600~hmac=a27546e3e88b40dd693ab978153dd44d84df86c54ca40ab90c807260cbcc26c4&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2966/2966486.png",
        accentColor: Colors.blueGrey,
      ),
      Group(
        name: "Traveling",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '3',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/female-tourists-hand-have-happy-travel-map_1150-7411.jpg?t=st=1653903084~exp=1653903684~hmac=caeb799c86350b162040522b055ee87593524dc7546446a3493260526b36b9e3&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2060/2060284.png",
        accentColor: Colors.teal,
      ),
      Group(
        name: "Meditation",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '4',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/mature-healthy-people-doing-yoga-park-group-people-exercising-green-grass_199620-12194.jpg?w=996",
        accentColor: Colors.orange.shade900,
        icon:
            "https://cdn-icons.flaticon.com/png/512/2773/premium/2773699.png?token=exp=1653925490~hmac=a5942e38725e30ecb62778c3040d0b67",
      ),
      Group(
        name: "Sports",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '0',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-couple-runner-running-running-road-city-park-sport-people-exercising-lifestyle-concept_41380-471.jpg?w=996",
        icon:
            "https://cdn-icons.flaticon.com/png/512/3311/premium/3311579.png?token=exp=1653925172~hmac=ade4d3bf9c14a2d01313fbe5087cc93d",
        accentColor: Colors.green,
      ),
      Group(
        name: "Music",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '1',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/people-dance-nightclub-party-concert-listen-music-from-dj-stage-background_31965-26874.jpg?w=1060",
        icon: "https://cdn-icons-png.flaticon.com/512/2907/2907253.png",
        accentColor: Colors.red,
      ),
      Group(
        name: "Health",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '2',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17818.jpg?t=st=1653903000~exp=1653903600~hmac=a27546e3e88b40dd693ab978153dd44d84df86c54ca40ab90c807260cbcc26c4&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2966/2966486.png",
        accentColor: Colors.blueGrey,
      ),
      Group(
        name: "Traveling",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '3',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/female-tourists-hand-have-happy-travel-map_1150-7411.jpg?t=st=1653903084~exp=1653903684~hmac=caeb799c86350b162040522b055ee87593524dc7546446a3493260526b36b9e3&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2060/2060284.png",
        accentColor: Colors.teal,
      ),
      Group(
        name: "Meditation",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '4',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/mature-healthy-people-doing-yoga-park-group-people-exercising-green-grass_199620-12194.jpg?w=996",
        accentColor: Colors.orange.shade900,
        icon:
            "https://cdn-icons.flaticon.com/png/512/2773/premium/2773699.png?token=exp=1653925490~hmac=a5942e38725e30ecb62778c3040d0b67",
      ),
      Group(
        name: "Sports",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '0',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-couple-runner-running-running-road-city-park-sport-people-exercising-lifestyle-concept_41380-471.jpg?w=996",
        icon:
            "https://cdn-icons.flaticon.com/png/512/3311/premium/3311579.png?token=exp=1653925172~hmac=ade4d3bf9c14a2d01313fbe5087cc93d",
        accentColor: Colors.green,
      ),
      Group(
        name: "Music",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '1',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/people-dance-nightclub-party-concert-listen-music-from-dj-stage-background_31965-26874.jpg?w=1060",
        icon: "https://cdn-icons-png.flaticon.com/512/2907/2907253.png",
        accentColor: Colors.red,
      ),
      Group(
        name: "Health",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '2',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17818.jpg?t=st=1653903000~exp=1653903600~hmac=a27546e3e88b40dd693ab978153dd44d84df86c54ca40ab90c807260cbcc26c4&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2966/2966486.png",
        accentColor: Colors.blueGrey,
      ),
      Group(
        name: "Traveling",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '3',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/female-tourists-hand-have-happy-travel-map_1150-7411.jpg?t=st=1653903084~exp=1653903684~hmac=caeb799c86350b162040522b055ee87593524dc7546446a3493260526b36b9e3&w=996",
        icon: "https://cdn-icons-png.flaticon.com/512/2060/2060284.png",
        accentColor: Colors.teal,
      ),
      Group(
        name: "Meditation",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis risus, mollis et iaculis sed, lobortis sed elit. Nullam quis magna ornare, facilisis velit fringilla, facilisis nisi",
        id: '4',
        followers: [],
        background:
            "https://img.freepik.com/free-photo/mature-healthy-people-doing-yoga-park-group-people-exercising-green-grass_199620-12194.jpg?w=996",
        accentColor: Colors.orange.shade900,
        icon:
            "https://cdn-icons.flaticon.com/png/512/2773/premium/2773699.png?token=exp=1653925490~hmac=a5942e38725e30ecb62778c3040d0b67",
      ),
    ];
    return Future.value(true);
  }

  Future<List<Group>> getGroups({String name = ''}) async {
    try {
      if (_groups == null || _groups!.isEmpty) {
        await fetchGroups();
      }

      return _groups!
          .where((Group cat) =>
              cat.name.toLowerCase().contains(name.toLowerCase()))
          .toList();
    } catch (e) {
      return Future.value(<Group>[]);
    }
  }

  Future<Group?> getGroupById(String id) async {
    try {
      if (_groups == null || _groups!.isEmpty) {
        await fetchGroups();
      }

      return _groups!.where((Group cat) => cat.id == id).first;
    } catch (e) {
      return Future.value(null);
    }
  }

  Future<List<Group>> getGroupsById(List followedGroups) async {
    try {
      if (_groups == null) {
        await fetchGroups();
      }

      return Future.value(_groups!
          .where((element) => followedGroups.contains(element.id))
          .toList());
    } catch (e) {
      print(e);
      return Future.value(<Group>[]);
    }
  }
}
