// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/Colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool is_account;
  const MyAppBar({super.key, required this.title, this.is_account = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(26))),
        backgroundColor: project_colors.sky_dark,
        title: Text(
          title,
          style: const TextStyle(
              color: project_colors.nav_bar_background, fontSize: 30),
        ),
        actions: <Widget>[
          if (is_account)
            IconButton(
                padding: const EdgeInsets.only(right: 10),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                icon: const Icon(Icons.account_circle, size: 40))
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
