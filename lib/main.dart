import 'package:app/screens/app_bar_screen.dart';
import 'package:app/screens/bottom_nav_bar_screen.dart';
import 'package:app/screens/card_and_parshing_data_screen.dart';
import 'package:app/screens/hello_world_screen.dart';
import 'package:app/screens/image_screen.dart';
import 'package:app/screens/row_column_screen.dart';
import 'package:app/screens/style_text_and_icon_screen.dart';
import 'package:app/screens/tab_bar_screen.dart';
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
      initialRoute: '/tab_bar',
      routes: {
        '/hello_world': (context) => const HelloWorldScreen(),
        '/style_text_and_icon': (context) => const StyleTextAndIconScreen(),
        '/app_bar': (context) => const AppBarScreen(),
        '/row_column': (context) => const RowColumnScreen(),
        '/card_and_parsing_data': (context) => const CardAndParshingDataScreen(),
        '/bottom_nav_bar': (context) => const BottomNavBarScreen(),
        '/tab_bar': (context) => const TabBarScreen(),
        '/image_screen': (context) => const ImageScreen(),
      },
    );
  }
}