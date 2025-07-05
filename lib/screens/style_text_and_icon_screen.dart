import 'package:flutter/material.dart';
import 'package:app/constants/app_colors.dart';

class StyleTextAndIconScreen extends StatefulWidget {
  const StyleTextAndIconScreen({super.key});

  @override
  State<StyleTextAndIconScreen> createState() => _StyleTextAndIconScreenState();
}

class _StyleTextAndIconScreenState extends State<StyleTextAndIconScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Style Text and Icon"),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          color: AppColors.primary,
          width: 200,
          height: 200,
          child: Center(
            child: Column(
              children: [
                Text("Hello, World!",
                  style: TextStyle(
                    color: AppColors.text,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.star)
              ],
            ),
          )
        )
      )
    );
  }
}