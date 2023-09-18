// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yesil_turizm/views/atik.dart';
import 'package:yesil_turizm/views/karbon.dart';
import 'package:yesil_turizm/views/seyahat.dart';

import 'config/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const karboniz(),
    const seyahat(),
    const atik(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
