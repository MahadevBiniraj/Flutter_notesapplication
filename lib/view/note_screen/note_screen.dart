import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapplication/view/note_screen/widgets/notecard.dart';

class Notescreen extends StatefulWidget {
  const Notescreen({super.key});

  @override
  State<Notescreen> createState() => _NotescreenState();
}

class _NotescreenState extends State<Notescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Text(
                      "Add Note",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color(0xffc0c0c0),
                          filled: true,
                          hintText: "Titile"),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color(0xffc0c0c0),
                          filled: true,
                          hintText: "Description"),
                      maxLines: 4,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color(0xffc0c0c0),
                          filled: true,
                          hintText: "Date"),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) => notecard(),
        ));
  }
}
