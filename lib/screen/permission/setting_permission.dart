// ignore_for_file: non_constant_identifier_names

import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/provider/lang_%20provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPermission extends StatefulWidget {
  const SettingPermission({super.key});

  @override
  State<SettingPermission> createState() => _PermissionState();
}

class _PermissionState extends State<SettingPermission> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Image.asset(height: 30, width: 30, 'assets/images/ICON1.png'),
          const SizedBox(
            width: 12,
          )
        ],
        title: const Text(
          'CCast',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black), // Default text style
                  children: <TextSpan>[
                    TextSpan(
                      text: 'To play media, please allow ',
                    ),
                    TextSpan(
                      text: 'CCast ',
                      style: TextStyle(
                          fontWeight:
                              FontWeight.bold), // Highlight "CCast" if needed
                    ),
                    TextSpan(
                      text: 'to access storage ',
                    ),
                    TextSpan(
                      text: ' on your device',
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .05,
          ),
          const Text(
            '1.Open Settings\n2.Tap Permission\n3.Turn on Music and audio',
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(
            height: height * .02,
          ),
          CustomButton(
            onPressed: () {
              dailoge_permission(context);
            },
            border: false,
            elevation: 0,
            width: height * .26,
            child: const Text(
              'Open Setting',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

Future<dynamic> dailoge_permission(BuildContext context) {
  return showDialog(
    barrierColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 50, bottom: 440, top: 110),
        child: Consumer<LanguageProvider>(
          builder: (BuildContext context, LanguageProvider, Widget? child) =>
              CustomButton(
            height: 200,
            border: false,
            elevation: 3,
            bradius: BorderRadius.circular(0),
            color: Colors.white,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                actions: const [Icon(Icons.more_vert)],
                title: const Text(
                  'App Permission',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              body: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/logo2.png',
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(width: 25),
                        const Text('CCast',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.folder_outlined,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 25),
                          const Text(
                            'Music and Audio',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Checkbox(
                              shape: const CircleBorder(),
                              value: LanguageProvider.isChecked,
                              onChanged: (bool? value) {
                                LanguageProvider.onTap(value = value!);
                              }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
