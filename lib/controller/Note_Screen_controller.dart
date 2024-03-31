import 'dart:ui';

import 'package:notesapplication/core/Color_constants/ColorConstants.dart';

class Notescreencontroller {
  static List notecontroller = [];
  static List<Color> colorlist = [
    Colorconstants.c1,
    Colorconstants.c2,
    Colorconstants.c3,
    Colorconstants.c4,
  ];
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
