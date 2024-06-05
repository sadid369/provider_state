import 'package:flutter/material.dart';

class MySecondProviderClass extends ChangeNotifier {
  String text2 = 'Second Provider';

  void changeData2(String data) {
    text2 = data;
    notifyListeners();
  }
}
