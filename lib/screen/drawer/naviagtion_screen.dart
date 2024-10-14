import 'package:ccast/screen/Screen_mirroring/screen_mirroring.dart';
import 'package:ccast/screen/homescreen/homescreen.dart';
import 'package:ccast/screen/homescreen/playlist.dart';
import 'package:ccast/screen/homescreen/recent.dart';
import 'package:ccast/screen/language/language_screen.dart';
import 'package:ccast/screen/media%20screen/media_screen.dart';
import 'package:flutter/material.dart';

void navigationScreen(int index, BuildContext context) {
  switch (index) {
    case 0:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));

      break;
    case 1:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ScreenMiroring()));
      break;
    case 2:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const RecentVideo()));
      break;
    case 3:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PlaylistScreen()));
      break;
    case 4:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LanguageScreen()));
      break;
    case 5:
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MediaScreen(
                    initialTabIndex: 0,
                  )));
      break;
    case 6:
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MediaScreen(
                    initialTabIndex: 1,
                  )));
      break;
    case 7:
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MediaScreen(
                    initialTabIndex: 2,
                  )));
      break;
    case 8:
      break;
    default:
  }
}
