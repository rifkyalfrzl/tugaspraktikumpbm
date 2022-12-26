import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends ChangeNotifier {
  bool _isHidePassword = true;

  bool get isHidePassword => _isHidePassword;
  void togglePasswordVisibility() {
    _isHidePassword = !_isHidePassword;
    notifyListeners();
  }
}
