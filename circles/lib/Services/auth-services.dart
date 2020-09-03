import 'dart:io';
import 'package:circles/Services/storage.dart';
import 'package:circles/models/user-model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  /// This Class will handle all the process related to the auth and account including:
  /// - the process of saving the user data to the cloud
  /// - Uploading the User Images will start from this class
  /// - Starting the app will run currentUser() to check if there is a user recorded locally in the device
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static Firestore _firestore = Firestore.instance;

  static Future<FirebaseUser> currentUser() async {
    assert(_auth != null);
    FirebaseUser currentUser = await _auth.currentUser();
    return currentUser;
  }

  static Future<FirebaseUser> signIn(String email, String password) async {
    assert(_auth != null);
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());

    assert(result != null);
    FirebaseUser currentUser = result.user;
    return currentUser;
  }

  static Future<FirebaseUser> signUp(String email, String password) async {
    // Create a new User with Email/Password
    assert(_auth != null);
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    assert(result != null);
    FirebaseUser currentUser = result.user;
    return currentUser;
  }

  static bool sendUserForgetPasswordEmail(String email) {
    // Return a bool to return the user email request is completed or not
    bool isCompleted = false;
    _auth.sendPasswordResetEmail(email: email.trim()).whenComplete(() {
      isCompleted = true;
    });

    return isCompleted;
  }

// Save and Retrive the User data funcs will be defined here is it related to the user
// Two Main Funcs: save/fetch

// Updating data func will be defined here also and updating data that related
//to circles as it will be connected to the user himself

  static Future<void> saveUserProfileData(User user, File imageFile) async {
    user.imageUrl = Storage.uploadUserImage(imageFile) as String;
    // Create a new doc with id :(_auth.currentUser().then((user) => user.uid));
    // Save the User data in Map format in the doc and The Personal Image will be stored in the storage
    _firestore
        .collection("USERS")
        .document(await _auth.currentUser().then((user) => user.uid))
        .setData(user.toMap());
  }

  static Future<User> fetchUserProfileData() async {
    // Get the currentUser Data by its uid and return User() with all the data
    return _firestore
        .collection("USERS")
        .document(await _auth.currentUser().then((value) => value.uid))
        .get()
        .then<dynamic>((DocumentSnapshot snapshot) {
      if (snapshot.data.isNotEmpty)
        return User.mapToUser(snapshot.data);
      else
        return null;
    });
  }
}
