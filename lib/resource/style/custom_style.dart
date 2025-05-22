// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyle {
  static TextStyle title = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle subtitle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle body = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle caption = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle button = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle link = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.blue,
  );

  static TextStyle error = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.red,
  );

  static TextStyle success = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.green,
  );

  static TextStyle warning = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.yellow,
  );

  static TextStyle info = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.blue,
  );

  static TextStyle hint = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static TextStyle label = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle field = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle placeholder = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static Decoration commonDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xffF3F7FC), Color(0xFFFAFAFA)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

}
