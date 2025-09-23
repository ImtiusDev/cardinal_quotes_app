import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/data/model/sound_cards_model.dart';
import 'package:flutter/material.dart';

class SoundCardInner extends StatelessWidget {
  final SoundCardsModel soundCardData;
  const SoundCardInner({super.key, required this.soundCardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8,bottom: 15,left: 5,right: 5),
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 75),
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(soundCardData.innerImage),
              Positioned.fill(
                top: 10,
                bottom: 10,
                right: 10,
                left: 10,
                child: Image.asset(AppImagePath.soundZigzagImage,
                height: 20,
                width: 20,
                color: Colors.white,
              ),),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.play_arrow,
                color: AppColors.primary,
              ),
              Text(soundCardData.duration.toStringAsFixed(2)),
            ],
          ),
          const SizedBox(height: 5.0,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: 
            LinearProgressIndicator(
              value: 0.98,
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 5.0,),
          Text(soundCardData.musicTitle, 
            style: AppTextSyle.body15semiBold(),
          ),
        ],
      ),
    );
  }
}
