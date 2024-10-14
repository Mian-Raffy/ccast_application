import 'package:ccast/Utliz/button.dart';
import 'package:ccast/screen/language/language_list.dart';
import 'package:ccast/provider/lang_%20provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    final languageController = Provider.of<LanguageProvider>(context);
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.cancel_outlined)),
        title: const Text(
          'Select Language',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: heigth * .7,
            child: SizedBox(
              height: heigth,
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) => Consumer<LanguageProvider>(
                  builder: (context, value, child) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Checkbox(
                          shape: const CircleBorder(),
                          value: languageController.isCheckedList[index],
                          onChanged: (value) {
                            languageController.selecItem(index, value!);
                          },
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          languages[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: heigth * .07,
          ),
          CustomButton(
            elevation: 0,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
