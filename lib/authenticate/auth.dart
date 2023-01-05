import 'dart:async';
import 'package:anonsignin/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users? _userFromFirebaseUser(User? user) {
    // ignore: unnecessary_null_comparison
    return user != null ? Users(uid: user.uid) : null;
  }

  Stream<Users?> get user =>
      _auth.authStateChanges().map(_userFromFirebaseUser);

  Future signAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign out the user
  //the signout function is built from the _auth
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
