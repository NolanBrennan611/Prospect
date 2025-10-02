import 'package:flutter/material.dart';
import 'views/pages/home_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'views/widget_tree.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROspect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          ),
        fontFamily: 'Mada',
        useMaterial3: true
      ),
      home: WidgetTree(),
      debugShowCheckedModeBanner: false,
    );
  }
}