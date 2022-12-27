import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_brew_app/models/myuser.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  MyUser? _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();      
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }


  // sign in with email & password

  // register with email & password

  // sign out

}