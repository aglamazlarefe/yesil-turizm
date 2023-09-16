// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/Colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: project_colors.green_base)),
                  labelText: "E-posta",
                  labelStyle: TextStyle(color: project_colors.green_base),
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return "e-postanızı giriniz";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                value = email;
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: project_colors.green_base)),
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: project_colors.green_base),
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Şifrenizi giriniz";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                value = password;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("kayıt ol"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Şifremi unuttum"),
              )
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Devam Et"))
        ],
      )),
    );
  }
}
