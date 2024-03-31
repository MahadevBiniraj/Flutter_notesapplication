import 'package:flutter/material.dart';
import 'package:notesapplication/controller/Note_Screen_controller.dart';

class notecard extends StatelessWidget {
  notecard({
    super.key,
    required this.title,
    required this.des,
    required this.date,
    required this.clrindex,
    this.onDeletePressed,
  });
  final String title;

  final String des;
  final String date;
  final int clrindex;
  final void Function()? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Notescreencontroller.colorlist[clrindex],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                InkWell(child: Icon(Icons.edit)),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                    onTap: onDeletePressed,
                                    child: Icon(Icons.delete)),
                              ],
                            ),
                          ]),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        des,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              date,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.share)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
