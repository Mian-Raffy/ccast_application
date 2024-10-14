import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/media%20screen/music/music_item.dart';
import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MusicItem();
                          },
                        ));
                      },
                      child: Row(
                        children: [
                          CustomButton(
                            elevation: 0,
                            color: AppColor.background2,
                            border: false,
                            bradius: BorderRadius.circular(10),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                                height: 30,
                                width: 30,
                                'assets/images/music.png'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Aud-8034561 mp3',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                          Spacer(),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
