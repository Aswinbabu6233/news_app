import 'package:flutter/material.dart';

class SplashScreenProvider extends ChangeNotifier {
  bool _isloading = true;

  bool get isloading => _isloading;

  void setloading(bool value) {
    _isloading = value;
    notifyListeners();
  }
}
