// ignore_for_file: library_private_types_in_public_api, must_be_immutable, unused_import, prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
import 'package:yesil_turizm/views/signin%20&%20signup/register_screen.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:yesil_turizm/views/atik.dart';
import 'package:yesil_turizm/views/karbon.dart';
import 'package:yesil_turizm/views/seyahat.dart';
import 'config/navigation_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Başlangıç sayfası olarak RegisterScreen kullanıyoruz
    );
  }
}
