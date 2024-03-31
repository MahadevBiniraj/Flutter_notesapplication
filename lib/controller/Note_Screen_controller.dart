import 'dart:ui';

class Notescreencontroller {
  static List notecontroller = [];
  static void addnote({
    required String title,
    required String des,
    required String date,
    int clrindex = 0,
  }) {
    notecontroller.add({
      "title": title,
      "des": des,
      "date": date,
      "colorindex": clrindex,
    });
  }
}
