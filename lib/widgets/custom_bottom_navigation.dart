import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  static final List<Icon> icons = [
    const Icon(Icons.home),
    const Icon(Icons.search),
    const Icon(Icons.add_circle),
    const Icon(Icons.settings),
    const Icon(Icons.person),

  ];
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      iconSize: 25,
      currentIndex: 2,
      selectedIconTheme: const IconThemeData(size: 48),
      items: icons
          .map((icon) => BottomNavigationBarItem(
                icon: icon,
                label: "",
              ))
          .toList(),
    );
  }
}
