import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/provider/carsoalslider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

class PhotosItem extends StatefulWidget {
  const PhotosItem({super.key});

  @override
  State<PhotosItem> createState() => _PhotosItemState();
}

class _PhotosItemState extends State<PhotosItem> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
      create: (_) => CarouselProvider(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: AppColor.background,
          title: const Text(
            'Photos',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Consumer<CarouselProvider>(
                  builder: (context, carouselProvider, child) {
                    return CarouselSlider(
                      items: List.generate(5, (index) {
                        return Container(
                          child: CustomButton(
                            width: 400,
                            border: false,
                            elevation: 0,
                            bradius: BorderRadius.circular(20),
                            color: Colors.grey,
                            child: Text('Button $index'),
                          ),
                        );
                      }),
                      carouselController: _carouselController,
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        viewportFraction: 0.88,
                        height: height * .3,
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          carouselProvider.setSlide(index);
                        },
                        autoPlay: false,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 80,
                  child: Consumer<CarouselProvider>(
                    builder: (context, carouselProvider, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: CustomButton(
                              elevation: 0,
                              width: 80,
                              border: false,
                              bradius: BorderRadius.circular(8),
                              color: Colors.grey,
                              child: Text(''),
                              onPressed: () {
                                carouselProvider.setSlide(index);
                                _carouselController.animateToPage(index);
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<CarouselProvider>(
                      builder: (context, carouselProvider, child) {
                        return CustomButton(
                          onPressed: () {
                            if (carouselProvider.currentSlide > 0) {
                              carouselProvider
                                  .setSlide(carouselProvider.currentSlide - 1);
                              _carouselController.previousPage();
                            }
                          },
                          elevation: 0,
                          bradius: BorderRadius.circular(4),
                          height: 60,
                          width: 80,
                          color: AppColor.background2,
                          child: Image.asset(
                            'assets/images/back.png',
                            height: 20,
                            width: 20,
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15),
                    CustomButton(
                      onPressed: () {},
                      elevation: 0,
                      bradius: BorderRadius.circular(4),
                      height: 60,
                      width: 80,
                      color: AppColor.background2,
                      child: Image.asset(
                        'assets/images/stop.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Consumer<CarouselProvider>(
                      builder: (context, carouselProvider, child) {
                        return CustomButton(
                          onPressed: () {
                            if (carouselProvider.currentSlide < 4) {
                              carouselProvider
                                  .setSlide(carouselProvider.currentSlide + 1);
                              _carouselController.nextPage();
                            }
                          },
                          elevation: 0,
                          bradius: BorderRadius.circular(4),
                          height: 60,
                          width: 80,
                          color: AppColor.background2,
                          child: Image.asset(
                            'assets/images/forward.png',
                            height: 20,
                            width: 20,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
