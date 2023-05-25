import "package:flutter/material.dart";

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
            fontSize: 18.0,
          ),
          toolbarTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
            fontSize: 18.0,
          ),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
