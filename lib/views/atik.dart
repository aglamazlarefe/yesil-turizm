// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/app_bar.dart';

class atik extends StatelessWidget {
  const atik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Geri Dönüşüm Noktaları"),
      body: Center(
          child: Text(
        "buraya harita gelecek belediyeden almamız lazım ",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
