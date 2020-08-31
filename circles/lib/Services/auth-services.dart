import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

Future<FirebaseUser> currentUser() async {
  assert(_auth != null);
  FirebaseUser currentUser = await _auth.currentUser();
  return currentUser;
}

Future<FirebaseUser> signIn(String email, String password) async {
  assert(_auth != null);
  AuthResult result = await _auth.signInWithEmailAndPassword(
      email: email.trim(), password: password.trim());

  assert(result != null);
  FirebaseUser currentUser = result.user;
  return currentUser;
}

Future<FirebaseUser> signUp(String email, String password) async {
  assert(_auth != null);
  AuthResult result = await _auth.createUserWithEmailAndPassword(
      email: email, password: password);

  assert(result != null);
  FirebaseUser currentUser = result.user;
  return currentUser;
}
