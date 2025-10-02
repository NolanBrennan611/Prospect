import 'package:flutter/material.dart';
import 'package:prospect/views/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
      return NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Schedule'),
          NavigationDestination(icon: Icon(Icons.fitness_center), label: 'Training'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Settings'),
        ],
        onDestinationSelected: (int index) {
          selectedPageNotifier.value = index;
        },
        selectedIndex: selectedPage,
    );
    });
  }
}