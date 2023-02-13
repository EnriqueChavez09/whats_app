import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static final green = Color(0xFF035556);
  static final green100 = Color(0xFF00BD5D);
  static final grey200 = Color(0xFFE7FFDC);
  static final white = Color(0xFFFFFFFF);
  static final black54 = Colors.black54;
  static final grey = Color(0xFF8796A2);
  // static final pink = Color(0xffE9357E);
  // static final purple = Color(0xff8F7296);
  // static final blue = Color(0xff0480DA);
  // static final red = Color(0xffD6281D);
  // static final grey = Color(0xffB7B7B7);
}

final normalPhoneTheme = ThemeData(
  textTheme: GoogleFonts.manropeTextTheme(),
  scaffoldBackgroundColor: CustomColors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.green,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: CustomColors.green,
  ),
);

// final smallPhoneTheme = ThemeData(
//   primaryColor: Colors.black,
//   accentColor: Colors.black,
//   scaffoldBackgroundColor: Colors.white,
//   // textTheme: TextTheme(
//   //   headline1: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 27, color: CustomColors.pink, fontWeight: FontWeight.w700) ),
//   //   headline2: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 21, color: Colors.black, fontWeight: FontWeight.w400) ),
//   //   headline3: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700) ),
//   //   headline4: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600) ),
//   //   // bodyText1: TextStyle(fontSize: 15.0, color: CustomColors.darkGray),
//   //   bodyText2: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400) ),
//   //   caption:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: CustomColors.grey, fontWeight: FontWeight.w400) ),
//   //   button: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600) ),

//   // ),
//   appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
// );
