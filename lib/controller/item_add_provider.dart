import 'package:flutter/material.dart';

class ButtonStateProvider with ChangeNotifier {
  // List to track button state for each item by index
  final List<bool> _buttonState = [];

  
  void toggleState(int index) {
    
    if (_buttonState.length <= index) {
      _buttonState.add(false); 
    }
    _buttonState[index] = !_buttonState[index];
    notifyListeners(); 
  }

  // Method to get button state for an item by index
  bool getButtonState(int index) {
    if (_buttonState.length <= index) {
      return false; // Default to 'Add' if no state is set
    }
    return _buttonState[index];
  }

  // Method to get button text for an item by index
  String getButtonText(int index) {
    return getButtonState(index) ? 'Added' : 'Add'; // Change text based on state
  }

  // Method to get button color for an item by index
  Color getButtonColor(int index) {
    return getButtonState(index) ? const Color(0xFFE70472) : Colors.white; // Change color based on state
  }

  Color getButtonTextColor(int index) {
    return getButtonState(index) ? Colors.white : const Color(0xFFE70472); // White for 'Added', black for 'Add'
  }
  
}


