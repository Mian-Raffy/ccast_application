import 'package:ccast/screen/media%20screen/video/video_item.dart';
import 'package:flutter/material.dart';

class VideoData extends StatelessWidget {
  const VideoData({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const VideoItem();
                  },
                ));
              },
              child: Row(children: [
                Image.asset(
                  'assets/images/video.png',
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: height * .02),
                const Text(
                  'vid-234567654 mp4',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert,
                  color: Colors.black26,
                )
              ]),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}