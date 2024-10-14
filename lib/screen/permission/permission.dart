import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/permission/setting_permission.dart';
import 'package:flutter/material.dart';

class Permission extends StatefulWidget {
  const Permission({super.key});

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
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
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColor.background2,
              child:
                  Image.asset(height: 60, width: 60, 'assets/images/logo2.png'),
            ),
          ),
          SizedBox(
            height: height * .02,
          ),
          Padding(
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
          SizedBox(
            height: height * .02,
          ),
          CustomButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingPermission(),
                  ));
            },
            border: false,
            elevation: 0,
            width: 100,
            child: const Text(
              'Allow',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
