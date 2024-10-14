import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/Screen_mirroring/screen_mirroring.dart';
import 'package:ccast/screen/drawer/drawer_screen.dart';
import 'package:ccast/screen/homescreen/playlist.dart';
import 'package:ccast/screen/homescreen/recent.dart';
import 'package:ccast/screen/homescreen/wificonnection.dart';
import 'package:ccast/screen/media%20screen/media_screen.dart';
import 'package:ccast/screen/permission/permission.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  VoidCallback? onTap;
  HomeScreen({super.key, this.onTap});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? initialTabIndex;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: DrawerScreen(),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.background,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'CCast',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: width < 500
          ? HomeScreenData(height: height, width: width)
          : SingleChildScrollView(
              child: HomeScreenData(height: height, width: width)),
    );
  }
}

class HomeScreenData extends StatelessWidget {
  const HomeScreenData({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: AppColor.background,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(33),
                      bottomRight: Radius.circular(33))),
              height: height * .2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 27),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        width: 275,
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return SingleChildScrollView(
                                  child: const Wificonnection());
                            },
                          );
                        },
                        border: true,
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.wifi_off,
                                color: Colors.white,
                              ),
                              Text(
                                '  Wi-Fi is Off  |',
                                style: TextStyle(
                                    fontSize: width < 500 ? 16 : 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Connect',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: width > 500 ? height * .060 : height * .023,
              top: height * .15,
              right: width > 500 ? height * .060 : height * .023,
              child: CustomButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ScreenMiroring();
                    },
                  ));
                },
                height: 90,
                width: width,
                elevation: 6,
                color: Colors.white,
                bradius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Screen Morning',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Mirror your phone to a larger screen',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                          height: 55, width: 55, 'assets/images/rotation.png'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: width > 505 ? height * .12 : height * .10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width < 500 ? height * .023 : height * .05),
          child: CustomButton(
            bradius: BorderRadius.circular(15),
            color: const Color(0xffEAEEFF),
            elevation: 0,
            height: width < 500 ? height * .32 : height * .35,
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Cast media to TV',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    CustomButton(
                      onPressed: () {},
                      border: false,
                      color: const Color(0xffD1D8FD),
                      elevation: 0,
                      width: width,
                      height: height * .1,
                      bradius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(
                                height: 35,
                                width: 35,
                                'assets/images/ICON.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '[TV]Samsung TN6050',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 13),
                                ),
                                Text(
                                  "Connected",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const Permission();
                                  },
                                ));
                              },
                              child: Image.asset(
                                  height: 20,
                                  width: 20,
                                  'assets/images/arrow.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const MediaScreen(
                                        initialTabIndex: 0);
                                  },
                                ));
                              },
                              child: CustomButton(
                                elevation: 0,
                                bradius: BorderRadius.circular(10),
                                height: height * .10,
                                width: height * .10,
                                color: const Color(0xffD1D8FD),
                                child: Image.asset(
                                    height: width < 500
                                        ? height * .13
                                        : height * .08,
                                    width: width * .13,
                                    'assets/images/video.png'),
                              ),
                            ),
                            const Text(
                              'Video',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const MediaScreen(
                                      initialTabIndex: 1,
                                    );
                                  },
                                ));
                              },
                              child: CustomButton(
                                elevation: 0,
                                bradius: BorderRadius.circular(10),
                                height: height * .10,
                                width: height * .10,
                                color: const Color(0xffD1D8FD),
                                child: Image.asset(
                                    height: height * .14,
                                    width: width * .14,
                                    'assets/images/gallery.png'),
                              ),
                            ),
                            const Text(
                              'Photo',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const MediaScreen(
                                      initialTabIndex: 2,
                                    );
                                  },
                                ));
                              },
                              child: CustomButton(
                                elevation: 0,
                                bradius: BorderRadius.circular(10),
                                height: height * .10,
                                width: height * .10,
                                color: const Color(0xffD1D8FD),
                                child: Image.asset(
                                    height: width < 500
                                        ? height * .13
                                        : height * .08,
                                    width: width * .13,
                                    'assets/images/music.png'),
                              ),
                            ),
                            const Text(
                              'Music',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const RecentVideo();
                    },
                  ));
                },
                child: CustomButton(
                  height: width < 500 ? height * .11 : height * .15,
                  width: width * .40,
                  border: false,
                  bradius: BorderRadius.circular(10),
                  color: const Color(0xffEAEEFF),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, top: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                              height: height * .07,
                              width: width * .07,
                              'assets/images/history1.png'),
                        ),
                        const Text(
                          'History Vedio',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PlaylistScreen();
                  }));
                },
                child: CustomButton(
                  height: width < 500 ? height * .11 : height * .15,
                  width: width * .40,
                  border: false,
                  bradius: BorderRadius.circular(10),
                  color: const Color(0xffEAEEFF),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, top: 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                              height: height * .07,
                              width: width * .07,
                              'assets/images/lines.png'),
                        ),
                        const Text(
                          'Playlists',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
