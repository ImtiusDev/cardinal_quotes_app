import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/sound_card_inner.dart';
import 'package:cardinal_quotes_app/data/model/sound_cards_model.dart';
import 'package:flutter/material.dart';

class SoundCard extends StatelessWidget {
  final SoundCardsModel soundCardData;
  const SoundCard({super.key, required this.soundCardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/player',
                arguments: soundCardData,
              );
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Image.asset(soundCardData.imagePath),
                  Positioned(
                    left: 5,
                    right: 5,
                    child: SoundCardInner(soundCardData: soundCardData),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 5),
          Text(
            'Music: ${soundCardData.musicTitle}',
            style: AppTextSyle.body15Bold(selectColor: AppColors.primaryWhite),
          ),

          const SizedBox(height: 5),
          Row(
            spacing: 14,
            children: [
              Text(
                '#${soundCardData.tags[0]}',
                style: AppTextSyle.min12Bold(
                  selectColor: AppColors.primaryWhite,
                ),
              ),
              Text(
                '#${soundCardData.tags[1]}',
                style: AppTextSyle.min12Bold(
                  selectColor: AppColors.primaryWhite,
                ),
              ),
              Text(
                '#${soundCardData.tags[2]}',
                style: AppTextSyle.min12Bold(
                  selectColor: AppColors.primaryWhite,
                ),
              ),
            ],
          ),

          const SizedBox(height: 5),
          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_rounded,
                      color: AppColors.primaryWhite,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      soundCardData.numberOfViews,
                      style: AppTextSyle.min12SemiBold(
                        selectColor: AppColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Icon(
                      Icons.screen_share_outlined,
                      color: AppColors.primaryWhite,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Share',
                      style: AppTextSyle.min12SemiBold(
                        selectColor: AppColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),

              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Icon(
                      Icons.file_download_outlined,
                      color: AppColors.primaryWhite,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Download',
                      style: AppTextSyle.min12SemiBold(
                        selectColor: AppColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),

              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: AppColors.primaryWhite,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Save',
                      style: AppTextSyle.min12SemiBold(
                        selectColor: AppColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
