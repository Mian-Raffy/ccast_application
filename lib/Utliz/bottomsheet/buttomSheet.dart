import 'package:ccast/Utliz/bottomsheet/music_data.dart';
import 'package:ccast/Utliz/bottomsheet/video_data.dart';
import 'package:flutter/material.dart';

enum SheetData { video, audio }

class BottomBox {
  void showBottomSheet(BuildContext context, SheetData sheetData) {
    // Make method public and take SheetData as an argument
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Queue',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              sheetData == SheetData.video
                  ? const VideoData()
                  : const MusicData(),
            ],
          ),
        );
      },
    );
  }
}
