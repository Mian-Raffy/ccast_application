import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/Screen_mirroring/tabview/browser.dart';
import 'package:ccast/screen/Screen_mirroring/tabview/tv.dart';
import 'package:flutter/material.dart';

class ScreenMiroring extends StatefulWidget {
  const ScreenMiroring({super.key});

  @override
  State<ScreenMiroring> createState() => _ScreenMiroringState();
}

class _ScreenMiroringState extends State<ScreenMiroring>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.tv,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      '   TV',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/broweser.png',
                      height: 30,
                      width: 30,
                    ),
                    Text(
                      '   Browser',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.background,
        title: const Text(
          'Screen Mirroring',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          Image.asset(
            'assets/images/media.png',
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: TabBarView(controller: _tabController, children: [
        SingleChildScrollView(child: TvTab(height: height)),
        SingleChildScrollView(child: BrowserTab(height: height)),
      ]),
    );
  }
}
