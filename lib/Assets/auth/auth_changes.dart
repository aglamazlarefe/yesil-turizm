import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yesil_turizm/views/signin%20&%20signup/sign_in.dart';

import '../../homepage.dart';

class AuthStateChangesExample extends StatelessWidget {
  const AuthStateChangesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;

          if (user == null) {
            // User is not signed in
            return const sign_in();
          } else {
            // User is signed in
            return const HomePage();
          }
        }

        // Loading state
        return const CircularProgressIndicator();
      },
    );
  }
}
