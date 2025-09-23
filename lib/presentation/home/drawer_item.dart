import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String label;
  final IconData icon;

  const DrawerItem({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 8.0),
      child: TextButton(
        onPressed: () {},
        child: Row(
          spacing: 5.0,
          children: [
            Icon(icon, color: AppColors.primary, size: 20),
            Text(label, style: AppTextSyle.body15Medium()),
          ],
        ),
      ),
    );
  }
}
