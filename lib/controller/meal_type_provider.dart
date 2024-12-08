import 'package:flutter/material.dart';

class MealTypeIndexProvider extends ChangeNotifier{
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateIndex(int newIndex){
    _selectedIndex = newIndex;
    notifyListeners();
  }
}