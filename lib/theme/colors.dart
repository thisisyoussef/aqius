import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData defaultTheme = _buildMyTheme();

  static ThemeData _buildMyTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      iconTheme: IconThemeData(color: Colors.lightBlueAccent),
      primaryTextTheme: TextTheme(
        headline6: TextStyle(color: Colors.lightBlueAccent),
      ),
      primaryColor: Colors.lightBlueAccent,
      primaryColorDark: Colors.lightBlueAccent,
      primaryColorLight: Colors.lightBlueAccent,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: Colors.black87,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.lightBlueAccent),
      primaryIconTheme: IconThemeData(color: Colors.lightBlueAccent),
      scaffoldBackgroundColor: Colors.white70,
//      backgroundColor: Colors.white,
      textTheme: base.textTheme
          .copyWith(
              headline1: base.textTheme.subtitle1
                  ?.copyWith(color: Colors.lightBlueAccent),
              subtitle1: base.textTheme.subtitle1
                  ?.copyWith(color: Colors.lightBlueAccent),
              bodyText1: base.textTheme.bodyText1
                  ?.copyWith(color: Colors.lightBlueAccent),
              bodyText2: base.textTheme.bodyText2
                  ?.copyWith(color: Colors.lightBlueAccent))
          .apply(bodyColor: Colors.lightBlueAccent, displayColor: Colors.red),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black87),
    );
  }
}
