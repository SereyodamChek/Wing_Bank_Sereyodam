import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.selectedItemColor,
    this.unselectedItemColor,
  });

  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: currentIndex,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: unselectedItemColor),
    );
  }
}
