import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/data/model/sound_cards_model.dart';
import 'package:flutter/material.dart';


class MusicPlayScreen extends StatelessWidget {
  final SoundCardsModel soundData;
  const MusicPlayScreen({super.key, required this.soundData});

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
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
        title: Padding(
          padding: const EdgeInsets.only(left: 5, top: 30),
          child: Text(
            soundData.musicTitle,
            style: AppTextSyle.body15semiBold(
              selectColor: AppColors.primaryWhite,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image Card Section
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: mediaSize.height * 0.4,
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      bottom: 70,
                      right: 25,
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          soundData.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: mediaSize.height * 0.4 - 75,
                      bottom: 0,
                      left: 80,
                      right: 80,
                      child: Image.asset(
                        AppImagePath.soundZigzagImage,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),

              /// Music Control Section
              SizedBox(
                height: 140,
                width: mediaSize.width,
                child: Stack(
                  children: [
                    /// Center Play Button
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(17),
                                offset: Offset(0, 0),
                                blurRadius: 10,
                                spreadRadius: 25,
                                
                              ),
                            ],
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 40,
                            color: AppColors.primaryWhite,
                          ),
                        ),
                      ),
                    ),

                    /// Fixed Vertical Progress Bar
                    Positioned(
                      top: 2,
                      right: 6,
                      bottom: 50,
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: SizedBox(
                          width: 120,
                          child: LinearProgressIndicator(
                            value: 0.6,
                            minHeight: 8,
                            borderRadius: BorderRadius.circular(10),
                            backgroundColor: AppColors.primaryWhite,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),

                    /// Volume Icon
                    Positioned(
                      right: 0,
                      top: 95,
                      child: Icon(
                        Icons.volume_down_rounded,
                        color: AppColors.primaryWhite,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),

              /// Music Data Section
              SizedBox(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Time Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '04.00',
                          style: AppTextSyle.body15semiBold(
                            selectColor: AppColors.primaryWhite,
                          ),
                        ),
                        Text(
                          '12.00',
                          style: AppTextSyle.body15semiBold(
                            selectColor: AppColors.primaryWhite,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    /// Horizontal Progress Bar
                    LinearProgressIndicator(
                      value: 0.6,
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(10),
                      backgroundColor: AppColors.primaryWhite,
                      color: AppColors.primary,
                    ),
                    const SizedBox(height: 20),

                    /// Music Title
                    Text(
                      'Music: ${soundData.musicTitle}',
                      style: AppTextSyle.body15Bold(
                        selectColor: AppColors.primaryWhite,
                      ),
                    ),
                    const SizedBox(height: 5),

                    /// Tags Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '#${soundData.tags[0]}',
                          style: AppTextSyle.min12Bold(
                            selectColor: AppColors.primaryWhite,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          '#${soundData.tags[1]}',
                          style: AppTextSyle.min12Bold(
                            selectColor: AppColors.primaryWhite,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          '#${soundData.tags[2]}',
                          style: AppTextSyle.min12Bold(
                            selectColor: AppColors.primaryWhite,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),

                    /// Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _actionButton(
                          Icons.remove_red_eye_rounded,
                          soundData.numberOfViews,
                          AppColors.primaryWhite,
                        ),
                        _actionButton(
                          Icons.screen_share_outlined,
                          "Share",
                          AppColors.primaryWhite,
                        ),
                        _actionButton(
                          Icons.file_download_outlined,
                          "Download",
                          AppColors.primaryWhite,
                        ),
                        _actionButton(
                          Icons.favorite,
                          "Save",
                          AppColors.primaryWhite,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper for action buttons
  Widget _actionButton(IconData icon, String label, Color color) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 5),
          Text(label, style: AppTextSyle.min12SemiBold(selectColor: color)),
        ],
      ),
    );
  }
}
