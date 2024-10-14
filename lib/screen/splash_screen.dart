import 'dart:async';

import 'package:ccast/screen/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff5C5DEA),
      body: Center(
        child: Image.asset(
            height: height * .30, width: width * .30, 'assets/images/logo.png'),
      ),
    );
  }
}
