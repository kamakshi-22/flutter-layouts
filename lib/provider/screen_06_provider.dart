import 'package:flutter/material.dart';

class Screen06Provider with ChangeNotifier{

  int _count = 0;
  int get count => _count;

  void setCount(){
    _count++;
    notifyListeners();
  }
}