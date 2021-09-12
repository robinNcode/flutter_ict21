import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth;

  AuthService(this._auth);
  Stream<User> get authStateChanges => _auth.idTokenChanges();

  Future<String> login(String email, String password) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Logged in Successfully";
    }
    catch(e){
      return e;
    }
  }

  Future<String> signUp(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signup Successfully";
    }
    catch(e){
      return e;
    }
  }
}