// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

// Kullanıcı kaydı
Future<User?> registerWithEmailAndPassword(
    String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  } catch (e) {
    print(e.toString());
    return null;
  }
}

// Kullanıcı girişi
Future<User?> signInWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  } catch (e) {
    print(e.toString());
    return null;
  }
}
