import 'package:firebase_auth/firebase_auth.dart';

class AuthServ {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // signIn Anonymously

  //stream changes handler
  Stream<FirebaseUser> get user {
    return _auth.onAuthStateChanged;
  }

  //sign In with username and password
  Future SignInWithPassword(String email, String password) async {
    try {
      //AuthResult result = await _auth.signInWithEmailAndPassword(email: "", password: "");
      dynamic result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
