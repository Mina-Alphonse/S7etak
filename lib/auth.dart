import 'package:firebase_auth/firebase_auth.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'database.dart';
import 'user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  //mail and password
  Future registerWithMailAndPassword(String password, Patients patients) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: patients.mail, password: password);
      FirebaseUser user = result.user;
      await DatabaseService(uid: result.user.uid).updatePatientData(patients);
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<FirebaseUser> signInWithMailAndPassword(
      String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      print(user.email);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Reset Password
  Future resetPassword(String email) {
    return _auth.sendPasswordResetEmail(email: email);
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
