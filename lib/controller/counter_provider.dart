import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 10;

  int get counter => _counter;

  void increment() {
    if (counter < 1500) {
      _counter++;
      notifyListeners();
    }
  }

  void decrement() {
    if (_counter > 10) {
      _counter--;
      notifyListeners();
    }
  }

   void setCounter(double newValue) {
    _counter = newValue.round();
    notifyListeners();
  }
}
