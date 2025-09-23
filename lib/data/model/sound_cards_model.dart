import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';

class SoundCardsModel {
  final String musicTitle;
  final String imagePath;
  final String innerImage;
  final double duration;
  final String numberOfViews;
  final List<String> tags;

  SoundCardsModel({
    required this.musicTitle,
    required this.imagePath,
    required this.innerImage,
    required this.duration,
    required this.numberOfViews,
    required this.tags,
  });

  static List<SoundCardsModel> getSoundCardsModel() {
    List<SoundCardsModel> getSoundCardsModel = [];

    getSoundCardsModel.add(
      SoundCardsModel(
        musicTitle: 'wiper',
        innerImage: AppImagePath.wipperSoundInnerImage,
        imagePath: AppImagePath.wiperSongImage,
        duration: 10.00,
        numberOfViews: '567570',
        tags: ["Ambition", "Inspiration", "Motivational"],
      ),
    );

    getSoundCardsModel.add(
      SoundCardsModel(
        musicTitle: 'wiper Blades',
        innerImage: AppImagePath.wipperBladesSoundInnerImage,
        imagePath: AppImagePath.wiperBladesImage,
        duration: 10.00,
        numberOfViews: '567570',
        tags: ["Ambition", "Inspiration", "Motivational"],
      ),
    );

      getSoundCardsModel.add(
      SoundCardsModel(
        musicTitle: 'wiper',
        innerImage: AppImagePath.wipperSoundInnerImage,
        imagePath: AppImagePath.wiperSongImage,
        duration: 10.00,
        numberOfViews: '567570',
        tags: ["Ambition", "Inspiration", "Motivational"],
      ),
    );



    return getSoundCardsModel;
  }
}
