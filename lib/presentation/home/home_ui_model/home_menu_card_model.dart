

import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';

class HomeMenuCardModel{
  final String iconPath;
  final String iconlabel;

  HomeMenuCardModel({required this.iconPath, required this.iconlabel});

  static List<HomeMenuCardModel> getHomeMenuCardModel() {
    List<HomeMenuCardModel> homeMenuCards = [];

    homeMenuCards.add(
      HomeMenuCardModel(iconPath: AppImagePath.cardinalSoundsIcon, iconlabel: 'Cardinal Sounds'),
    );

    homeMenuCards.add(
      HomeMenuCardModel(iconPath: AppImagePath.wallpaperIcon, iconlabel: 'Wallpaper'),
    );

    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.natureSoundsIcon,
        iconlabel: 'Nature Sounds',
      ),
    );

    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.sleepingSoundsIcon,
        iconlabel: 'Sleeping Sounds',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.meditationIcon,
        iconlabel: 'Meditation',
      ),
    );

    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.breathingExercisesIcon,
        iconlabel: 'Breathing Exercises',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.shortMeditationIcon,
        iconlabel: 'Short Meditations',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.meditationalAudiosIcon,
        iconlabel: 'Meditational Audios',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.topQuotesIcon,
        iconlabel: 'Top Quotes',
      ),
    );
   
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.soulCheckinIcon,
        iconlabel: 'Soul Check-in',
      ),
    );

    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.sacredJournalsIcon,
        iconlabel: 'Sacred Journals',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.medicineNotesIcon,
        iconlabel: 'Medicine Notes',
      ),
    );

    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.memorialCardsIcon,
        iconlabel: 'Memorial Cards',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.saveIcon,
        iconlabel: 'Save',
      ),
    );
    homeMenuCards.add(
      HomeMenuCardModel(
        iconPath: AppImagePath.cardinalQuotesIcon,
        iconlabel: 'Cardinal Quotes',
      ),
    );

    return homeMenuCards;
  }

}