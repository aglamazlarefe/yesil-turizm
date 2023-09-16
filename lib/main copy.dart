
// ignore_for_file: file_names

/*
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
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  bool isWelcomeScreenCompleted =
      false; // Kullanıcı karşılama ekranını tamamladı mı?

  final List<Widget> _pages = [
    const karboniz(),
    const seyahat(),
    const atik(),
    const RegisterScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: SafeArea(
          child: _pages[_currentIndex],
        ),
        extendBody: true,
        bottomNavigationBar: MyNavigationBar(
          currentIndex: _currentIndex,
          onTabChange: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
*/