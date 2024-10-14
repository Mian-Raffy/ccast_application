import 'package:ccast/Utliz/button.dart';
import 'package:ccast/Utliz/colors.dart';
import 'package:ccast/screen/media%20screen/photos/photos_item.dart';
import 'package:flutter/material.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({super.key});

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PhotosItem();
                          },
                        ));
                      },
                      child: Row(
                        children: [
                          CustomButton(
                            elevation: 0,
                            color: AppColor.background2,
                            border: false,
                            bradius: BorderRadius.circular(10),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                                height: 30,
                                width: 30,
                                'assets/images/gallery.png'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'img-8034561.ipg',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                          Spacer(),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
