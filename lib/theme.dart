import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0xFFFA4A0C),
    backgroundColor: Color(0xFFBCBABA),
    scaffoldBackgroundColor: Colors.grey[100],
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFF9A9A9D),
        fontFamily: 'Exo',
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color(0xFF9A9A9D),
        fontFamily: 'ZenDots',
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Colors.black,
        fontFamily: 'ZenDots',
        fontSize: 34.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        color: Color(0xFFFA4A0C),
        fontFamily: 'ZenDots',
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
        fontFamily: 'ZenDots',
        fontSize: 22.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyText2: TextStyle(
        color: Color(0xFFFA4A0C),
        fontFamily: 'ZenDots',
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
  );
}
