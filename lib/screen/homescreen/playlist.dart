import 'package:ccast/Utliz/button.dart';
import 'package:ccast/screen/homescreen/playlist_item.dart';
import 'package:flutter/material.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomButton(
            elevation: 3,
            color: Colors.white,
            height: 100,
            width: double.infinity,
            bradius: BorderRadius.circular(0),
            child: AppBar(
              title: const Text(
                'Playlists',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              actions: [
                Image.asset(
                  'assets/images/cadd.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 20),
                Image.asset(
                  'assets/images/recent.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 20),
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * .03),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const PlaylistItem();
                          },
                        ));
                      },
                      child: Row(children: [
                        Image.asset(
                          'assets/images/playicon.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: height * .02),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Test1',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                            Text(
                              '3 items',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ],
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
            )
          ],
        ),
      ),
    );
  }
}
