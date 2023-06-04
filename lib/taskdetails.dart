import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/tasklist.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 300),
              child: Column(
                children: [
                  Text(
                    "ADD YOUR TASK",
                    style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    FontAwesomeIcons.clipboardCheck,
                    color: Colors.white,
                    size: 50,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 300, left: 230),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(TaskList());
                          },
                          child: Icon(FontAwesomeIcons.arrowRight),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.white)),
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
