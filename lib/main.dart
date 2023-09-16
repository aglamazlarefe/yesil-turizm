// ignore_for_file: library_private_types_in_public_api, must_be_immutable, unused_import, prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
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

  final List<Widget> _pages = [const karboniz(), const seyahat(), const atik()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: SafeArea(
            child: isWelcomeScreenCompleted
                ? _pages[_currentIndex]
                : WelcomeScreen(
                    isWelcomeScreenCompleted: isWelcomeScreenCompleted,
                  )),
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

class WelcomeScreen extends StatefulWidget {
  bool isWelcomeScreenCompleted; // final anahtar kelimesini kaldırdık
  WelcomeScreen({Key? key, required this.isWelcomeScreenCompleted})
      : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hoş Geldiniz!"),
            ElevatedButton(
              onPressed: () {
                // Burada ise WelcomeScreen'in içindeki değişkeni güncelleyebilirsiniz.
                setState(() {
                  widget.isWelcomeScreenCompleted = true;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            karboniz()), // Hedef sayfanın adını ve widget'ını buraya ekleyin
                  );
                });
              },
              child: Text("Devam Et"),
            ),
          ],
        ),
      ),
    );
  }
}
