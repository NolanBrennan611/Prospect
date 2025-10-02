import 'package:flutter/material.dart';
import 'package:prospect/views/data/notifiers.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectedPageNotifier.value = pageBeforeChat.value;
        },
        child: Icon(Icons.close),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      body: Center(
        child: Text(pageBeforeChat.value.toString()),
      ),
    );
  }
}