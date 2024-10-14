import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/media%20screen/music/music.dart';
import 'package:ccast/screen/media%20screen/photos/photos.dart';
import 'package:ccast/screen/media%20screen/video/video.dart';
import 'package:flutter/material.dart';

class MediaScreen extends StatefulWidget {
  final int initialTabIndex; // Pass initialTabIndex as a parameter

  const MediaScreen({super.key, required this.initialTabIndex});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController with the passed initialTabIndex
    tabController = TabController(
        length: 3, vsync: this, initialIndex: widget.initialTabIndex);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Media',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColor.background,
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white30,
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: const [
            Tab(text: 'Video'),
            Tab(text: 'Photos'),
            Tab(text: 'Audios'),
          ],
        ),
        actions: [
          Image.asset(
            'assets/images/media.png',
            height: 20,
            width: 20,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          VideoTab(),
          PhotosScreen(),
          MusicScreen(),
        ],
      ),
    );
  }
}
