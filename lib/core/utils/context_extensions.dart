import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future<T?> push<T>(Widget widget) {
    return Navigator.of(this)
        .push(MaterialPageRoute<T>(builder: (context) => widget));
  }

  Future<T?> pushReplacement<T>(Widget widget) {
    return Navigator.of(this)
        .pushReplacement(MaterialPageRoute<T>(builder: (context) => widget));
  }

  void popToHome() => Navigator.of(this).popUntil((route) => route.isFirst);
  void pop() => Navigator.of(this).pop();

  Future<bool> maybePop<T>([T? data]) => Navigator.maybePop(this, data);

  void showSnackBar(SnackBar snackbar) =>
      ScaffoldMessenger.of(this).showSnackBar(snackbar);

  void requestFocus(FocusNode nextFocus) =>
      FocusScope.of(this).requestFocus(nextFocus);

  double height() {
    return MediaQuery.of(this).size.height;
  }

  double width() {
    return MediaQuery.of(this).size.width;
  }
}