import 'package:easy_budget/app_config/constant.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    fontFamily: kFontFamily,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xFFFAFAFC),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.black87,
      selectionColor: Colors.black87,
      selectionHandleColor: Colors.black87,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      filled: true,
      contentPadding: EdgeInsets.all(10),
    ),
    primaryColor: Colors.white,
    //Color(kMainColor),
    accentColor: Colors.black54,
      appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white70,
      ),
      color: Colors.black87,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Color(0xFF0E0E0E),
        ),
        headline6: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color(0xFF0E0E0E),
      ),
      headline1: TextStyle(
        color: Color(0xFF0E0E0E),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline2: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      bodyText2: TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFF0E0E0E),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    canvasColor: Color(0xFFFBFBFB),
    iconTheme: IconThemeData(color: Colors.black54),
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: kFontFamily,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF0E0E0E),
    textSelectionTheme: TextSelectionThemeData(
        //cursorColor: Color(kMainColor),
        //selectionColor: Color(kMainColor),
        //selectionHandleColor: Color(kMainColor),
        ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      filled: true,
      contentPadding: EdgeInsets.all(10),
    ),
    primaryColor: Colors.white,
    //accentColor: Color(kAccentColor),
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      elevation: 0,
      color: Color(0xFF131313),
      iconTheme: IconThemeData(color: Colors.white54),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Color(0xFFF8F8FA),
        ),
        headline6: TextStyle(
          color: Color(0xFFF8F8FA),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF131313),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color(0xFFF8F8FA),
      ),
      headline1: TextStyle(
        color: Color(0xFFF8F8FA),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline2: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      bodyText2: TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFFE9E9E9),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    canvasColor: Color(0xFF121212),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
    ),
  );
}
