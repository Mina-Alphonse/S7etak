import 'package:firebase_auth/firebase_auth.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'database.dart';
import 'userDataClass.dart';
import 'user.dart';





class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user)
  {
    return user!= null ? User (uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
        //.map((FirebaseUser user) => _userFromFirebaseUser(user));
  }



  //anonymous
  /*Future signInAnonymous () async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }*/


  //mail and password
  Future registerWithMailAndPassword (String password,Patients patients)async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: patients.mail , password:password);
      FirebaseUser user = result.user;
      await DatabaseService(uid: result.user.uid).updatePatientData(patients);
      // UserDataClass referalClass = new UserDataClass(name:name,phone:phone,mail:email);
      // await DatabaseService(uid: user.uid).updateUserData(referalClass);
      /*ReferalData referalData = new ReferalData(
        name: "Test Referral",
        phone: "7130000000",
        city: "Houston",
        comments: "This is a Test Referral Created automatically Please don't remove until you add real data",
        state: "TX",
        timeToContact: "5/5/2020",
        ZIPCode: '12345',
        email: email,
        amountOfMoney: '0',
        came: 'Not Yet',
        contacted: 'Not Yet',
        paid: 'No',
        status: 'Not Yet',
        bought: 'No',
      );
      await DatabaseService(uid: user.uid).addReferalData(referalData);*/
      return _userFromFirebaseUser(user);
    }catch(e){
      print (e.toString());
      return null;
    }
  }


  Future<FirebaseUser> signInWithMailAndPassword (String email,String password)async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email:email , password:password);
      FirebaseUser user = result.user;
      print(user.email);
      return user;
    }catch(e){
      print (e.toString());
      return null;
    }
  }


  //Reset Password
  Future resetPassword (String email)
  {
    return _auth.sendPasswordResetEmail(email: email);
  }

  //sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e)
    {
      print(e.toString());
      return null;
    }
  }
}