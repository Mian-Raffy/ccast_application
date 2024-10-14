import 'package:ccast/screen/drawer/rate_screen.dart';
import 'package:flutter/material.dart';
import 'package:ccast/Utliz/button.dart';
import 'package:ccast/screen/drawer/naviagtion_screen.dart';
import 'drawer_icon.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<String> itemList = [
    'Home Page',
    'Screen Mirroring',
    'Recent Video',
    'PlayList',
    'Change Language',
    'Videos',
    'Photos',
    'Audios',
    'Rate Us',
    'Share the app',
    'Privacy Policy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CustomButton(
              width: double.infinity,
              border: false,
              elevation: 1,
              bradius: BorderRadius.circular(0),
              color: Colors.white,
              child: const Text(
                "CCast",
                style: TextStyle(color: Colors.purple),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return CustomButton(
                    onPressed: () {
                      if (index == 8) {
                        Navigator.pop(context);

                        Future.delayed(const Duration(milliseconds: 300), () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 370,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Center(child: RateScreen()),
                              );
                            },
                          );
                        });
                      } else {
                        navigationScreen(index, context);
                      }
                    },
                    elevation: 0,
                    color: Colors.white,
                    border: false,
                    bradius: BorderRadius.circular(0),
                    height: 40,
                    child: ListTile(
                      leading: Image.asset(
                        iconPaths[index],
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        itemList[index],
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
