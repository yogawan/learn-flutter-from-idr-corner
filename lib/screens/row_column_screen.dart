import 'package:flutter/material.dart';
import 'package:app/constants/app_colors.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({super.key});

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Row and Column'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: AppColors.primary,
                ),
                SizedBox(width: 12,),
                Container(
                  width: 200,
                  height: 200,
                  color: AppColors.primary,
                ),
                SizedBox(width: 12,),
                Container(
                  width: 200,
                  height: 200,
                  color: AppColors.primary,
                )
              ],
            ),

            SizedBox(height: 12,),

            Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: AppColors.primary,
                ),
                SizedBox(height: 12,),
                Container(
                  width: 200,
                  height: 200,
                  color: AppColors.primary,
                ),
                SizedBox(height: 12,),
                Container(
                  width: 200,
                  height: 200,
                  color: AppColors.primary,
                )
              ],
            ),
          ],
        )
      )
    );
  }
}