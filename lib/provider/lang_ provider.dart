import 'package:ccast/screen/language/language_list.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  bool _isChecked = false;
  bool get isChecked => _isChecked;
  final List<bool> _isCheckedList =
      List.generate(languages.length, (index) => false);
  List<bool> get isCheckedList => _isCheckedList;
  void onTap(bool value) {
    _isChecked = value;
    notifyListeners();
  }

  final List<bool> _selectedList = List.generate(4, (index) => false);
  List<bool> get selectedList => _selectedList;
  void selecItem(int index, bool value) {
    _isCheckedList[index] = value;
    notifyListeners();
  }
}
