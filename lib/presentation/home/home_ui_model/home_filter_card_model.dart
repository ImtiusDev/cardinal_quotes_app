import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';

class HomeFilterCardModel {
  final String iconPath;
  final String iconlabel;

  HomeFilterCardModel({required this.iconPath, required this.iconlabel});

  static List<HomeFilterCardModel> getHomeFilterCards() {
    List<HomeFilterCardModel> filterCard = [];

    filterCard.add(
      HomeFilterCardModel(iconPath: AppImagePath.popularIcon, iconlabel: 'Popular'),
    );

    filterCard.add(
      HomeFilterCardModel(iconPath: AppImagePath.newIcon, iconlabel: 'Latest'),
    );
    filterCard.add(
      HomeFilterCardModel(
        iconPath: AppImagePath.griefEmojiIcon,
        iconlabel: 'Grief & Loss',
      ),
    );

    filterCard.add(
      HomeFilterCardModel(
        iconPath: AppImagePath.poemsAndPoetryIcon,
        iconlabel: 'Poems & Poetry',
      ),
    );
    filterCard.add(
      HomeFilterCardModel(
        iconPath: AppImagePath.rememberingEmojiIcon,
        iconlabel: 'Remembering',
      ),
    );
    filterCard.add(
      HomeFilterCardModel(
        iconPath: AppImagePath.heavenlyIcon,
        iconlabel: 'Heavenly',
      ),
    );

    filterCard.add(
      HomeFilterCardModel(
        iconPath: AppImagePath.memoriesIcon,
        iconlabel: 'Memories',
      ),
    );

    return filterCard;
  }
}
