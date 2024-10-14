import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/provider/tab_provider.dart';
import 'package:ccast/screen/media%20screen/video/video_item.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class VideoTab extends StatelessWidget {
  const VideoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: AppColor.background,
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                fillColor: Color(0xffF0F2F3),
                filled: true,
                hintText: 'Search',
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Folders',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Consumer<TabIndexProvider>(
                    builder:
                        (BuildContext context, tabProvider, Widget? child) {
                      return CustomButton(
                        onPressed: () {
                          tabProvider.setIndex(
                              index); // Update the index when button is pressed
                        },
                        color: tabProvider.currentIndex == index
                            ? null // Set the color for the current index
                            : Colors
                                .grey, // Set the color for non-selected indexes
                        width: 200,
                        height: 50,
                        bradius: BorderRadius.circular(10),
                        child: Text(
                          '[Folder name] ($index)', // Display the index for clarity
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Text(
                    'All Video',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/arrowdown.png',
                    height: 18,
                    width: 18,
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ]),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Sorted by: ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black87),
                          ),
                          TextSpan(
                            text: 'Date',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: AppColor.background),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Latest',
                      style: TextStyle(
                          color: AppColor.background,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/arrowdown.png',
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
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
                        Container(
                          height: height * .09,
                          width: height * .09,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(13)),
                        ),
                        SizedBox(width: height * .02),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vid-01234556',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'mp4',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.more_vert)
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
