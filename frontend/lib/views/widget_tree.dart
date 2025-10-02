import 'package:flutter/material.dart';
import 'package:prospect/views/data/notifiers.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';
import 'pages/training_page.dart';
import 'pages/account_settings_page.dart';
import 'pages/chat_page.dart';
import 'widgets/navbar_widget.dart';

List<Widget> pages = [
  SchedulePage(),
  TrainingPage(),
  AccountSettingsPage(),
  ChatPage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  final bool isLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier, 
      builder: (context, selectedPage, child) {
        return Scaffold(
          body: isLoggedIn ? pages.elementAt(selectedPage) : HomePage(),
          floatingActionButton: isLoggedIn && selectedPage != 3 && selectedPage != 2 ? FloatingActionButton(
            onPressed: () {
              pageBeforeChat.value = selectedPageNotifier.value;
              selectedPageNotifier.value = 3;
            },
            child: Icon(Icons.inbox),
          ) : null,
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
          bottomNavigationBar: isLoggedIn && selectedPage != 3 ? NavbarWidget() : null,
        );
      },
    );
  }
}