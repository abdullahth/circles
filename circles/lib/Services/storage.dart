import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/firebase.dart' as firebase;

class Storage {
  /// All the Storage process:
  /// Uploading Images
  /// Retrive Images

  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<Uri> uploadUserImage(File file) async {
    // Upload the User Image to the Path: UserImage/{userUid}.png
    firebase.StorageReference reference = firebase
        .storage()
        .ref("UserImages/${_auth.currentUser().then((value) => value.uid)}");

    firebase.UploadTaskSnapshot snapshot = await reference.put(file).future;
    Uri imageUri = await snapshot.ref.getDownloadURL();
    return imageUri;
  }

  static Future<List<Uri>> uploadCircleImages(
      List<File> files, int circleId) async {
    // Uploading One Circle Images to the Path Related to the User himself
    List<Uri> uris = [];
    for (int i = 0; i < files.length; i++) {
      for (File file in files) {
        firebase.StorageReference reference = firebase.storage().ref(
            "/${_auth.currentUser().then((value) => value.uid)}/$circleId-/$i");

        firebase.UploadTaskSnapshot snapshot = await reference.put(file).future;
        Uri imageUri = await snapshot.ref.getDownloadURL();
        uris.add(imageUri);
      }
    }
    return uris;
  }
}
