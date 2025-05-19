import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';

class MainScreen extends StatelessWidget {
  final Widget body;
  final int currentPageIndex;
  final Function(int) onChangeIndex;

  const MainScreen({
    super.key,
    required this.body,
    required this.currentPageIndex,
    required this.onChangeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: onChangeIndex,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: ColorStyles.gray1),
            selectedIcon: Icon(Icons.home, color: ColorStyles.primary100),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border, color: ColorStyles.gray1),
            selectedIcon: Icon(Icons.bookmark, color: ColorStyles.primary100),
            label: 'bookmark',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_outlined, color: ColorStyles.gray1),
            selectedIcon: Icon(
              Icons.notifications,
              color: ColorStyles.primary100,
            ),
            label: 'notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: ColorStyles.gray1),
            selectedIcon: Icon(Icons.person, color: ColorStyles.primary100),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
