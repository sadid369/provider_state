import 'package:flutter/material.dart';

class MyProviderClass extends ChangeNotifier {
  String text = 'My Provider String';

  void changeData(String data) {
    text = data;
    notifyListeners();
  }
}
