import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:yesil_turizm/config/Colors.dart';

class MyNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTabChange;

  const MyNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTabChange,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveNavigationBar(
      backgroundOpacity: 1,
      selectedIndex: widget.currentIndex,
      onTabChange: widget.onTabChange,
      backgroundColor: project_colors.nav_bar_background,
      inactiveIconColor: project_colors.nav_bar_inactive,
      navigationBarButtons: const [
        NavigationBarButton(
            icon: Icons.compost,
            text: 'Karbon Ayak İzi',
            backgroundColor: project_colors.nav_bar_selected),
        NavigationBarButton(
            icon: Icons.travel_explore,
            text: 'Seyahat Rehberi',
            backgroundColor: project_colors.nav_bar_selected),
        NavigationBarButton(
            icon: Icons.person,
            text: 'Atık yönetimi',
            backgroundColor: project_colors.nav_bar_selected),
      ],
    );
  }
}
