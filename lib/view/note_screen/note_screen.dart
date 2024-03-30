import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapplication/controller/Note_Screen_controller.dart';
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff4b4b4b),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Add Note",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Titile"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Description"),
                          maxLines: 4,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.calendar_month),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Date"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                              4,
                              (index) => Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                  )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Notescreencontroller.addnote();
                                Navigator.pop(context);
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Center(
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: Notescreencontroller.notecontroller.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => notecard(),
        ));
  }
}
