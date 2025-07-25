import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  Future<UserCredential> signInWithEmailAndPassword(
    String email,
    password,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  Future<UserCredential> signUpWithEmailAndPassword(
    String email,
    password,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  Future <void> signOut()async{
    await _firebaseAuth.signOut();
  }
}

