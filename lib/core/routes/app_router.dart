import 'package:cardinal_quotes_app/data/model/sound_cards_model.dart';
import 'package:cardinal_quotes_app/presentation/home/home.dart';
import 'package:cardinal_quotes_app/presentation/medicine_note/medicine_note.dart';
import 'package:cardinal_quotes_app/presentation/more.dart';
import 'package:cardinal_quotes_app/presentation/soul/soul_screen.dart';
import 'package:cardinal_quotes_app/presentation/sounds/music_play_screen.dart';
import 'package:cardinal_quotes_app/presentation/sounds/sound_screen.dart';
import 'package:cardinal_quotes_app/presentation/top/top_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case '/': return MaterialPageRoute(builder: (context)=> Home());
      case '/sound': return MaterialPageRoute(builder: (context)=> SoundScreen());
      case '/soul': return MaterialPageRoute(builder: (context)=> SoulScreen());
      case '/top': return MaterialPageRoute(builder: (context)=> TopScreen());
      case '/more': return MaterialPageRoute(builder: (context)=> MoreScreen());

      case '/player':
          final soundData = routeSettings.arguments as SoundCardsModel;  
          return MaterialPageRoute(builder: (_)=> MusicPlayScreen(soundData: soundData,));
      case '/medicine': return MaterialPageRoute(builder: (context)=> MedicineNoteScreen());
      default: return null;
    }
  }
}
