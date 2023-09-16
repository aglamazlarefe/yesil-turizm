import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/Colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          IconButton(
              padding: const EdgeInsets.only(right: 10),
              onPressed: () {},
              icon: const Icon(Icons.account_circle, size: 40))
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
