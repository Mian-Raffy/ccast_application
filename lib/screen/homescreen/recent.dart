import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/provider/media_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentVideo extends StatefulWidget {
  const RecentVideo({super.key});

  @override
  State<RecentVideo> createState() => _RecentVideoState();
}

class _RecentVideoState extends State<RecentVideo> {
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
              'Recent Video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            actions: [
              Image.asset(
                'assets/images/recent.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * .02),
            const Text(
              '2024-08-12',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: height * .01),
            Expanded(
              child: Consumer<MediaProvider>(
                builder: (BuildContext context, mediaProvider, child) {
                  if (mediaProvider.items.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/oops.png',
                        height: height * 0.3,
                        width: height * 0.3,
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: mediaProvider.items.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Container(
                                    height: height * .09,
                                    width: height * .09,
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                  ),
                                  SizedBox(width: height * .02),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        mediaProvider.items[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Text(
                                        'mp4',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      mediaProvider.deleteItem(index);
                                    },
                                    icon: const Icon(Icons.cancel_outlined),
                                    color: AppColor.background,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
