import 'package:flutter/material.dart';

class MediaProvider with ChangeNotifier {
  final List<String> _items = [
    'vid-234567654.mp4',
    'vid-123456789.mp4',
    'vid-987654321.mp4',
    'vid-567890123.mp4',
    'vid-654321987.mp4',
  ];

  // Getter to access the list
  List<String> get items => _items;

  // Function to delete an item from the list
  void deleteItem(int index) {
    _items.removeAt(index);
    notifyListeners(); // Notify listeners about the change
  }
}
