import 'package:flutter/material.dart';
import 'package:app/constants/app_colors.dart';

class HelloWorldScreen extends StatefulWidget {
  const HelloWorldScreen({super.key});

  @override
  State<HelloWorldScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World Screen'),
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}