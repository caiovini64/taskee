import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return ThemeData(
      scaffoldBackgroundColor: primaryColor,
      backgroundColor: Colors.white,
      buttonColor: primaryColor,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: widthScreen < 480 ? 42 : 60,
        ),
        headline2: TextStyle(
          color: backgroundColor,
          fontWeight: FontWeight.bold,
          fontSize: widthScreen < 480 ? 42 : 60,
        ),
        headline3: TextStyle(
          color: backgroundColor,
          fontWeight: FontWeight.bold,
          fontSize: widthScreen < 480 ? 18 : 24,
        ),
        headline4: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: widthScreen < 480 ? 16 : 24,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: widthScreen < 480 ? 14 : 22,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: widthScreen < 480 ? 14 : 26,
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
