// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/Colors.dart';
import 'package:yesil_turizm/config/app_bar.dart';
import 'package:yesil_turizm/services/authservices.dart';
import 'package:yesil_turizm/views/signin%20&%20signup/register_screen.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _LoginPageState();
}

class _LoginPageState extends State<sign_in> {
  late String email;
  late String password;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Giriş Yap",
        is_account: false,
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: project_colors.green_base)),
                  labelText: "E-posta",
                  labelStyle: TextStyle(color: project_colors.green_base),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _passwordController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: project_colors.green_base)),
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: project_colors.green_base),
                  border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text("Kayıt Ol"),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text("Şifremi Unuttum"),
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  auth_services().signin(
                      context: context,
                      email: _emailController.text,
                      password: _passwordController.text);
                },
                child: const Text("Giriş  Yap"))
          ],
        ),
      )),
    );
  }
}
