import 'dart:ui';

import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:flutter/material.dart';

class Wificonnection extends StatelessWidget {
  const Wificonnection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select your device',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              textAlign: TextAlign.center,
              'Make sure that your phone and TV are connected to the same Wifi',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/wifi.png',
                  height: 20,
                  width: 20,
                ),
                const Text(
                  '  Wi-fi Connected',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                )
              ],
            ),
            const Divider(),
            const Text(
              textAlign: TextAlign.start,
              'Searching for device',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Connect_dailoge();
                  },
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: AppColor.background2,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/device.png',
                        height: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('IMAD`S LEON'),
                      Text('connected'),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ]),
    );
  }
}

// ignore: camel_case_types
class Connect_dailoge extends StatelessWidget {
  const Connect_dailoge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: height * .4),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        height: height * .27,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Connected to',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/tv.png',
                height: 60,
                width: 60,
              ),
              const Text(
                '[Tv]Samsung 7 Series (50)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel')),
                  CustomButton(
                    elevation: 0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    width: 150,
                    child: const Text(
                      'Disconnected',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
