import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';

class DrawerMenuModel{
  final String menuIconPath;
  final String menuIconlabel;

  DrawerMenuModel({required this.menuIconPath, required this.menuIconlabel});

  static List<DrawerMenuModel> getDrawerMenuModel() {
    List<DrawerMenuModel> drawerMenuModel = [];

    drawerMenuModel.add(
      DrawerMenuModel(menuIconPath: AppImagePath.exploreIcon, menuIconlabel: 'Explore'),
    );
    
    drawerMenuModel.add(
      DrawerMenuModel(menuIconPath: AppImagePath.popularIcon, menuIconlabel: 'Popular'),
    );

    drawerMenuModel.add(
      DrawerMenuModel(menuIconPath: AppImagePath.cardinalSoundsIcon, menuIconlabel: 'Cardinal Sounds'),
    );

    drawerMenuModel.add(
      DrawerMenuModel(menuIconPath: AppImagePath.wallpaperIcon, menuIconlabel: 'Wallpaper'),
    );

    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.natureSoundsIcon,
        menuIconlabel: 'Nature Sounds',
      ),
    );

    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.sleepingSoundsIcon,
        menuIconlabel: 'Sleeping Sounds',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.meditationIcon,
        menuIconlabel: 'Meditation',
      ),
    );

    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.breathingExercisesIcon,
        menuIconlabel: 'Breathing Exercises',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.shortMeditationIcon,
        menuIconlabel: 'Short Meditations',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.meditationalAudiosIcon,
        menuIconlabel: 'Meditational Audios',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.topQuotesIcon,
        menuIconlabel: 'Top Quotes',
      ),
    );
   
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.soulCheckinIcon,
        menuIconlabel: 'Soul Check-in',
      ),
    );

    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.sacredJournalsIcon,
        menuIconlabel: 'Sacred Journals',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.medicineNotesIcon,
        menuIconlabel: 'Medicine Notes',
      ),
    );

    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.memorialCardsIcon,
        menuIconlabel: 'Memorial Cards',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.saveIcon,
        menuIconlabel: 'Save',
      ),
    );
    drawerMenuModel.add(
      DrawerMenuModel(
        menuIconPath: AppImagePath.cardinalQuotesIcon,
        menuIconlabel: 'Cardinal Quotes',
      ),
    );

    return drawerMenuModel;
  }

}