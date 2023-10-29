// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/Colors.dart';
import 'package:yesil_turizm/config/app_bar.dart';
import 'package:yesil_turizm/Services/auth/firebase_auth.dart';
import 'package:yesil_turizm/views/signin%20&%20signup/sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Kayıt Ol",
        is_account: false,
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: project_colors.green_base)),
                  labelText: "İsim",
                  labelStyle: TextStyle(color: project_colors.green_base),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
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
              obscureText: true,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const sign_in()),
                );
              },
              child: const Text("Hesabın var mı o zaman giriş yap"),
            ),
            ElevatedButton(
                onPressed: () {
                  auth_services().signup(
                      name: _nameController.text,
                      email: _emailController.text,
                      password: _passwordController.text);
                },
                child: const Text("kayıt ol"))
          ],
        ),
      )),
    );
  }
}
