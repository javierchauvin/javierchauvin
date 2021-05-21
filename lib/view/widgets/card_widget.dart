

import 'package:flutter/material.dart';
import 'package:javierchauvin/view/design/colors.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardWithShadows({@required List<TextSpan> text}){

  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
    child: Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          boxShadow: [
            BoxShadow(
              offset: Offset(10,10),
              color: Color.fromARGB(80, 0, 0, 0),
              blurRadius: 10,
            ),
            BoxShadow(
              offset: Offset(-10,-10),
              color: Color.fromARGB(150, 255, 255, 255),
              blurRadius: 10,
            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.robotoMono (
                      color: JColors.name,
                      fontSize: 16
                  ),
                  children: text
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}