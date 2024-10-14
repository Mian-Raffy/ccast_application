import 'package:flutter/material.dart';

class StarRatingProvider with ChangeNotifier {
  List<bool> _isStarFilled = [false, false, false, false, false];

  int _selectedStarIndex = -1;

  List<bool> get isStarFilled => _isStarFilled;

  int get selectedStarIndex => _selectedStarIndex;

  void toggleStar(int index) {
    for (int i = 0; i < _isStarFilled.length; i++) {
      _isStarFilled[i] = i <= index;
    }
    _selectedStarIndex = index;
    notifyListeners();
  }

  void resetStars() {
    _isStarFilled = [false, false, false, false, false];
    _selectedStarIndex = -1;
    notifyListeners();
  }
}
