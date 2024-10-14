import 'package:ccast/Utliz/bottomsheet/buttomSheet.dart';
import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:flutter/material.dart';

class MusicItem extends StatefulWidget {
  const MusicItem({super.key});

  @override
  State<MusicItem> createState() => _MusicItemState();
}

class _MusicItemState extends State<MusicItem> {
  final BottomBox bottomBox = BottomBox();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aud-01234556' + ' mp3',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.background,
        actions: [
          Image.asset(height: 25, width: 25, 'assets/images/ICON1.png'),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomButton(
              width: double.infinity,
              border: false,
              bradius: BorderRadius.circular(20),
              color: AppColor.background2,
              elevation: 0,
              height: height * .27,
              child: Center(
                child: Image.asset(
                    height: 70, width: 70, 'assets/images/music2.png'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              height: width < 500 ? height * .18 : height * .22,
              elevation: 0,
              bradius: BorderRadius.circular(20),
              width: double.infinity,
              color: AppColor.background2,
              child: Column(
                children: [
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 4.0),
                      trackHeight: 1.0,
                    ),
                    child: Slider(
                      activeColor: AppColor.background,
                      autofocus: false,
                      min: 0.0,
                      max: 1.0,
                      value: 0.8,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '0.00',
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Text('0.00', style: TextStyle(color: Colors.black))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          height: 20,
                          width: 20,
                          'assets/images/back.png',
                        ),
                        Image.asset(
                            height: 20, width: 20, 'assets/images/stop.png'),
                        Image.asset(
                            height: 20, width: 20, 'assets/images/forward.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  border: false,
                  bradius: BorderRadius.circular(5),
                  color: AppColor.background2,
                  elevation: 0,
                  height: 70,
                  width: 80,
                  child: Image.asset(
                    height: 20,
                    width: 20,
                    'assets/images/stop.png',
                  ),
                ),
                CustomButton(
                  border: false,
                  bradius: BorderRadius.circular(5),
                  color: AppColor.background2,
                  elevation: 0,
                  height: 70,
                  width: 80,
                  child: Image.asset(
                    height: 40,
                    width: 40,
                    'assets/images/toggle_on.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    bottomBox.showBottomSheet(context, SheetData.audio);
                  },
                  child: CustomButton(
                    border: false,
                    bradius: BorderRadius.circular(5),
                    color: AppColor.background2,
                    elevation: 0,
                    height: 70,
                    width: 80,
                    child: Image.asset(
                      height: 30,
                      width: 30,
                      'assets/images/queue.png',
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
            CustomButton(
              color: AppColor.background2,
              border: false,
              bradius: BorderRadius.circular(5),
              elevation: 0,
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    height: 30,
                    width: 30,
                    'assets/images/remove.png',
                  ),
                  Container(
                    width: 1,
                    height: 30,
                    color: AppColor.background,
                  ),
                  Image.asset(
                    height: 30,
                    width: 30,
                    'assets/images/speaker.png',
                  ),
                  Container(
                    width: 1,
                    height: 30,
                    color: AppColor.background,
                  ),
                  Image.asset(
                    height: 30,
                    width: 30,
                    'assets/images/add.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
