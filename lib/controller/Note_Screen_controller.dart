import 'dart:ui';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapplication/core/Color_constants/ColorConstants.dart';

class Notescreencontroller {
  static List noteListkeys = [];
  static List<Color> colorlist = [
    Colorconstants.c1,
    Colorconstants.c2,
    Colorconstants.c3,
    Colorconstants.c4,
  ];
  //hive reference
  static Box mybox = Hive.box('Notebox');
  //add note
  static void addnote({
    required String title,
    required String des,
    required String date,
    int clrindex = 0,
  }) {
    mybox.add({
      "title": title,
      "des": des,
      "date": date,
      "colorindex": clrindex,
    });
    noteListkeys = mybox.keys.toList();
  }

  static void deleteNote(int index) {
    noteListkeys.removeAt(index);
  }
}
