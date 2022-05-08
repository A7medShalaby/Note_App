import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color orange = Colors.deepOrange;

  static List<Color> cardsColor = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.deepOrange.shade100,
    Colors.deepPurple.shade100,
    Colors.pink.shade100,
    Colors.blueGrey.shade100,
  ];

  static TextStyle mainTitle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mainContent = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle dateTitle = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
}
