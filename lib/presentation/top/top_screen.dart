import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        toolbarHeight: 80,
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 30),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, color: AppColors.primaryWhite),
          ),
        ),
      ),

      backgroundColor: AppColors.scaffoldBackground,
      body: Center(
        child: Container(
          child: Text(
            'Top Screen',
            style: AppTextSyle.heading4SemiBold(AppColors.primaryWhite),
          ),
        ),
      ),
    );
  }
}
