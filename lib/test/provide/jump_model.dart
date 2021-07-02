import 'package:flutter/material.dart';

class JumpModel with ChangeNotifier {
  int currentIndex = 0;
  changeIndex(int index) {
    this.currentIndex = index;
    notifyListeners();
  }
}
