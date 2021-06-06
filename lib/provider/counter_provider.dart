import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  CounterProvider(String baseQuery) {
    if (int.tryParse(baseQuery) != null) {
      _counter = int.parse(baseQuery);
    }
  }

  get counter => this._counter;

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }
}
