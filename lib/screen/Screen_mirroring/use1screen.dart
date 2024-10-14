import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/provider/carsoalslider.dart';
import 'package:ccast/screen/Screen_mirroring/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UseScreen extends StatefulWidget {
  const UseScreen({super.key});

  @override
  State<UseScreen> createState() => _UseScreenState();
}

class _UseScreenState extends State<UseScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    List<DataModel> sliderData = [
      DataModel(
        image: 'assets/images/tv_mob.png',
        text:
            'Make sure your phone and TV (or wireless adapter) are connected to the same wifi and turn off VPN.',
        heading: 'Step 1',
      ),
      DataModel(
        image: 'assets/images/use2.png',
        text:
            'Enable the `Mircast Display` function on your TV. (You need to enable it manually on some devices, go to your TV setting to check)',
        heading: 'Step 2',
      ),
      DataModel(
        image: 'assets/images/use3.png',
        text:
            'Click the `Connect` button, enable the wireless display function, and select your device from the list.',
        heading: 'Step 3',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.background,
        title: const Text(
          'How to Use',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Previous Button
            Consumer<CarouselProvider>(
              builder: (context, carouselProvider, _) {
                return CustomButton(
                  onPressed: carouselProvider.currentSlide == 0
                      ? null
                      : () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                          carouselProvider
                              .setSlide(carouselProvider.currentSlide - 1);
                        },
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 15,
                  ),
                );
              },
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: sliderData.length,
                onPageChanged: (index) {
                  context.read<CarouselProvider>().setSlide(index);
                },
                itemBuilder: (context, index) {
                  return Center(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Text(
                          sliderData[index].heading,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Image.asset(
                          sliderData[index].image,
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            sliderData[index].text,
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Dots Indicator
                        Consumer<CarouselProvider>(
                          builder: (context, carouselProvider, _) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                sliderData.length,
                                (dotIndex) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  height: 8,
                                  width:
                                      carouselProvider.currentSlide == dotIndex
                                          ? 35
                                          : 8,
                                  decoration: BoxDecoration(
                                    color: carouselProvider.currentSlide ==
                                            dotIndex
                                        ? AppColor.background
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Next Button
            Consumer<CarouselProvider>(
              builder: (context, carouselProvider, _) {
                return CustomButton(
                  height: 30,
                  width: 30,
                  onPressed:
                      carouselProvider.currentSlide == sliderData.length - 1
                          ? null
                          : () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                              carouselProvider
                                  .setSlide(carouselProvider.currentSlide + 1);
                            },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 15,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
