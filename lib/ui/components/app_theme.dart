import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: primaryColor,
      backgroundColor: backgroundColor,
      buttonColor: primaryColor,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 42,
        ),
        headline2: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        headline4: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: primaryColor,
      backgroundColor: Colors.white,
      buttonColor: primaryColor,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 42,
        ),
        headline2: TextStyle(
          color: backgroundColor,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        headline3: TextStyle(
          color: backgroundColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        headline4: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
      ),
    );
  }
}

const primaryColor = Color(0xff755FE2);
const primaryColorDark = Color(0xff393D69);
const backgroundColor = Color(0xff142025);
const orangeCardColor = Color(0xffFF565E);
const greenCardColor = Color(0xff00A88B);
const accentColor = Color(0xff224957);
