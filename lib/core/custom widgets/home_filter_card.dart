import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFilterCard extends StatelessWidget {
   final String iconPath;
   final String iconlabel;
   const HomeFilterCard({super.key,required this.iconPath, required this.iconlabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPath.endsWith('.svg'))
            SvgPicture.asset(
              iconPath,
              semanticsLabel: 'loadError',
              height: 20, 
              width: 20,
            )
          else
            Image.asset(
              iconPath,
              height: 20,
              width: 20,
              color: AppColors.primary,
            ),

          const SizedBox(width: 8,),
          Text(iconlabel,
            style: AppTextSyle.body15Medium(),
          ),
        ],
      ),
    );
  }
}


