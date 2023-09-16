import 'package:cloud_firestore/cloud_firestore.dart';

class auth_services {
  final usercollection = FirebaseFirestore.instance.collection("users");

  Future<void> registerUser(
      {required String name,
      required String email,
      required String password}) async {
    await usercollection
        .doc()
        .set({"email": email, "name": name, "password ": password});
  }
}
