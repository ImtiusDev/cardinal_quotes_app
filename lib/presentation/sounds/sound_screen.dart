
import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/sound_card.dart';
import 'package:cardinal_quotes_app/data/model/sound_cards_model.dart';
import 'package:flutter/material.dart';

class SoundScreen extends StatelessWidget {
  SoundScreen({super.key});

  final List<SoundCardsModel> _soundCardModel =
      SoundCardsModel.getSoundCardsModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      
      appBar: Navigator.canPop(context)
          ? AppBar(
              backgroundColor: AppColors.scaffoldBackground,
              toolbarHeight: 80,
              titleSpacing: 0,
              leading: Navigator.canPop(context)
                  ? Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        top: 30,
                      ), 
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back,
                          color: AppColors.primaryWhite,
                        ),
                      ),
                    )
                  : null,

              title: Navigator.canPop(context)
                  ? Padding(
                      padding: const EdgeInsets.only(left: 5, top: 30),
                      child: Text(
                        'Sounds',
                        style: AppTextSyle.body15semiBold(
                          selectColor: AppColors.primaryWhite,
                        ),
                      ),
                    )
                  : null,
            )
          : AppBar(
              toolbarHeight: 50.0,
              backgroundColor: AppColors.scaffoldBackground,
            ),

      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Navigator.canPop(context)
                  ? SizedBox()
                  :Row(
                  children: [
                    Icon(Icons.arrow_forward,
                      color: AppColors.primaryWhite,
                    ),
                    const SizedBox(width: 10,),
                    Text('Sleep Sounds',
                      style: AppTextSyle.body15semiBold(selectColor: AppColors.primaryWhite),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: _soundCardModel.length,
                  itemBuilder: (context, index) {
                    return SoundCard(soundCardData: _soundCardModel[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
