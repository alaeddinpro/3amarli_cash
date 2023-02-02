import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    textTheme: ThemeData.light().textTheme.copyWith(
        headline4: TextStyle(
          fontSize: 24,
          fontFamily: 'bein',
          color: Color(0xff6464F9),
        ),
        headline6: TextStyle(
          fontSize: 32,
          fontFamily: 'bein',
          color: Color(0xff4FE4C1),
        ),
        headline5: TextStyle(
          fontSize: 24,
          fontFamily: 'bein',
          color: Color(0xff4FE4C1),
        )));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: ThemeData.dark().textTheme.copyWith(
        headline4: TextStyle(
          fontSize: 24,
          fontFamily: 'bein',
          color: Color(0xff6464F9),
        ),
        headline6: TextStyle(
          fontSize: 32,
          fontFamily: 'bein',
          color: Color(0xff4FE4C1),
        ),
        headline5: TextStyle(
          fontSize: 24,
          fontFamily: 'bein',
          color: Color(0xff4FE4C1),
        )));
