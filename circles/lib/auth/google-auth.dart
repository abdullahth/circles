import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
GoogleSignIn googleSignIn = GoogleSignIn();

Future<User> signInWithGoogle() async {
  final GoogleSignInAccount account = await googleSignIn.signIn();
  final GoogleSignInAuthentication authentication =
      await account.authentication;

  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      idToken: authentication.idToken, accessToken: authentication.accessToken);

  assert(credential != null);
  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  assert(authResult != null);
  final User user = authResult.user;
  assert(user != null);
  assert(user.uid != null);

  return user;
}

void signOutWithGoogle() {
  googleSignIn.signOut();
}
