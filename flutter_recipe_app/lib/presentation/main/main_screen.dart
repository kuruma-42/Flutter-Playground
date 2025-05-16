import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final Widget body;
  final int currentPageIndex;
  final Function(int) onChageIndex;

  const MainScreen({
    super.key,
    required this.body,
    required this.currentPageIndex,
    required this.onChageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
