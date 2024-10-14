import 'package:flutter/material.dart';

class CarouselProvider extends ChangeNotifier {
  int _currentSlide = 0;

  int get currentSlide => _currentSlide;

  void setSlide(int index) {
    _currentSlide = index;
    notifyListeners();
  }
}
