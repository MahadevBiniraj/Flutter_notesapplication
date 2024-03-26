import 'package:flutter/material.dart';
import 'package:notesapplication/view/note_screen/note_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Notescreen(),
    );
  }
}
