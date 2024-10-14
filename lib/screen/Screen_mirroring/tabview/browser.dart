import 'package:ccast/Utliz/button.dart';
import 'package:flutter/material.dart';

class BrowserTab extends StatelessWidget {
  const BrowserTab({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: height * .04,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height * .030),
          child: Row(
            children: [
              CustomButton(
                height: 20,
                width: 20,
                elevation: 0,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                maxLines: 2,
                softWrap: true,
                'Make sure your phone and browser are\nconnected to the same WiFi and VPN is off.',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height * .030),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/line.png',
                height: 80,
              ),
              const SizedBox(
                width: 30,
              ),
              Image.asset(
                'assets/images/rotate.png',
                height: 15,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'WiFi is off',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height * .030),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(
                height: 20,
                width: 20,
                elevation: 0,
                child: const Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                maxLines: 2,
                softWrap: true,
                'Click on Start button.',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height * .030),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/line.png',
                height: 80,
              ),
              const SizedBox(
                width: 10,
              ),
              CustomButton(
                height: 60,
                width: 280,
                elevation: 0,
                child: const Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height * .030),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(
                height: 20,
                width: 20,
                elevation: 0,
                child: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                maxLines: 2,
                softWrap: true,
                'Open this link on your browser to start mirroring',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: height * .09),
          child: CustomButton(
            height: 60,
            bradius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(0)),
            width: 250,
            color: Colors.grey.withOpacity(0.15),
            elevation: 0,
            child: Row(
              children: [
                CustomButton(
                  height: 60,
                  elevation: 0,
                  bradius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  width: 50,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/copy_file.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'http://192.168.1.3.8',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Center(
          child: Text(
            textAlign: TextAlign.center,
            'Make sure each number is entered correctly, as the\nadress may change every time you connect.',
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}
