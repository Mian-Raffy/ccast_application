import 'package:ccast/Utliz/button.dart';
import 'package:flutter/material.dart';

class PlaylistItem extends StatelessWidget {
  const PlaylistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomButton(
            elevation: 3,
            color: Colors.white,
            height: 100,
            width: double.infinity,
            bradius: BorderRadius.circular(0),
            child: AppBar(
              title: const Text(
                'Test 1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              actions: [
                Image.asset(
                  'assets/images/recent.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 20),
              ],
            ),
          )),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            textAlign: TextAlign.center,
            'The playlist is empty.Select "to add playlist" to add item',
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
