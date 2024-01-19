import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void incrementValue() {
    _value++;

    notifyListeners();
  }

  void decrementtValue() {
    _value--;

    notifyListeners();
  }
}
