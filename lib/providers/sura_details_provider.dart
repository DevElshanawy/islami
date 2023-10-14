import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier{
  List<String> verses=[];
  void loadFile(int index) async {
    try {
      String sura = await rootBundle.loadString(
          "assets/files/${index + 1}.txt");
      List<String> lines = sura.split("\n");
      print(lines);
      verses = lines;
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}