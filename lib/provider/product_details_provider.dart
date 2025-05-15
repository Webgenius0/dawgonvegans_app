import 'package:flutter/material.dart';

class ProductDetailsProvider extends ChangeNotifier {
  int count = 1;
  final double initialPrice = 12.23;
  double price = 12.23;

  void addCountPrice() {
    count++;
    price = initialPrice * count;
    notifyListeners();
  }

  void decrementCountPrice() {
    if (count > 1) {
      count--;
      price = initialPrice * count;
      notifyListeners();
    }
  }
}
