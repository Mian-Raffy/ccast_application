import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/provider/starrating_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RateScreen extends StatelessWidget {
  RateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'assets/images/neutral.png',
      'assets/images/neutral.png',
      'assets/images/happy.png',
      'assets/images/happy.png',
      'assets/images/excite.png',
    ];
    List<String> textList = [
      'your feed back is welcome',
      'Oh, no!',
      'Oh, no!',
      'Much apreciated',
      'Thanks! We like you too!',
    ];
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Consumer<StarRatingProvider>(
          builder: (context, starRatingProvider, child) {
            return starRatingProvider.selectedStarIndex == -1
                ? Image.asset(
                    'assets/images/smilee.png',
                    height: 50,
                    width: 50,
                  )
                : Image.asset(
                    imgList[starRatingProvider.selectedStarIndex],
                    height: 50,
                    width: 50,
                  );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            height: 90,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Consumer<StarRatingProvider>(
                builder: (context, starRatingProvider, child) {
                  return starRatingProvider.selectedStarIndex == -1
                      ? const Column(
                          children: [
                            Text(
                              'We are working for a better user experience',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'We greatly appreciate you if you rate us.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )
                      : Text(
                          textList[starRatingProvider.selectedStarIndex],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        );
                },
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Consumer<StarRatingProvider>(
                builder: (context, starRatingProvider, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTap: () {
                        starRatingProvider.toggleStar(index);
                      },
                      child: Icon(
                        size: 45.0,
                        starRatingProvider.isStarFilled[index]
                            ? Icons.star_rounded
                            : Icons.star_border_outlined,
                        color: AppColor.background,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'The best we can get :)   ',
              style: TextStyle(
                  color: AppColor.background,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Image.asset(
              'assets/images/upper.png',
              height: height * .06,
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(
          height: height * .03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(
            height: 50,
            elevation: 0,
            border: false,
            hasShadow: false,
            child: const Text(
              'Rate ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
