import 'package:app/screens/app_bar_screen.dart';
import 'package:app/screens/hello_world_screen.dart';
import 'package:app/screens/style_text_and_icon_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reiteration Flutter',
      initialRoute: '/app_bar',
      routes: {
        '/hello_world': (context) => const HelloWorldScreen(),
        '/style_text_and_icon': (context) => const StyleTextAndIconScreen(),
        '/app_bar': (context) => const AppBarScreen(),
      },
    );
  }
}