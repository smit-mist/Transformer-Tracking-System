import 'package:firebase_auth/firebase_auth.dart';
import 'package:tts/models/user_model.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

// This file Does sign_in,sign_up.
// Also Database Creates custom model of our User besides from the one given by firebase
class AuthService {
  final _auth = FirebaseAuth.instance;

  AppUser userFromFirebaseUser(User user) {
    return user != null ? AppUser(uid: user.uid, email: user.email) : null;
  }

  Future<AppUser> signUp(String email, String password) async {
    try {
      final User user = (await _auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      return userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      print("An error while Sign UP");
      print(e);
    }
    return null;
  }

  Future signIn(String email, String password) async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      return user;
    } on FirebaseAuthException catch (e) {
      print("An error while sing in");
      print(e);
      return null;
    }
  }
}

class Database {
  final _db = FirebaseFirestore.instance;
  Future<void> addUser(AppUser currentUser) {
    Map<String,dynamic>createCustomUser = {
      'email': currentUser.email ?? 'This was NULL',
      'name': currentUser.name ?? 'This was NULL',
      'address':currentUser.address?? 'This was NULL',
      'city':currentUser.city?? 'This was NULL',
      'emp_id':currentUser.empId?? 'This was NULL',
      'phone':currentUser.mobileNo?? 'This was NULL',
      'post':currentUser.post?? 'This was NULL',
      'remark':currentUser.remark?? 'This was NULL',
      'state':currentUser.state?? 'This was NULL'
    };
    return _db.collection('employee_details').doc(currentUser.uid).set(createCustomUser);
  }

}
