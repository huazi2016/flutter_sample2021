import 'package:flutter/material.dart';

class CountModel with ChangeNotifier {
  int _value = 0;

  int get getValue => _value;

  increment() {
    _value++;
    notifyListeners();
  }
}
