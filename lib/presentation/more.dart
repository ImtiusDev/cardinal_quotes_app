import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Center(
        child: Text('More Screen',
          style: AppTextSyle.heading4SemiBold(AppColors.primaryWhite),
        ),
      ),
    );
  }
}