import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/Screen_mirroring/use1screen.dart';
import 'package:flutter/material.dart';

class TvTab extends StatelessWidget {
  const TvTab({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height * .07,
        ),
        Text(
          textAlign: TextAlign.center,
          'Make sure Your Phone and TV are connected to the same WiFi.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * .06,
        ),
        Image.asset(
          'assets/images/tv_mob.png',
          width: height * .35,
        ),
        SizedBox(
          height: height * .09,
        ),
        CustomButton(
          elevation: 0,
          width: 300,
          child: Text(
            'Connect',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        CustomButton(
          height: 40,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return UseScreen();
              },
            ));
          },
          borderColor: AppColor.background,
          border: true,
          elevation: 0,
          color: Colors.transparent,
          width: 300,
          child: Text(
            'How To Use',
            style: TextStyle(color: AppColor.background),
          ),
        ),
      ],
    );
  }
}
