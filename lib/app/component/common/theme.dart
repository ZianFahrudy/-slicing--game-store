import 'package:flutter/material.dart';
import 'package:game_store_app/app/component/common/palette.dart';

class AppTheme {
  static ThemeData get basic {
    return ThemeData(
      primarySwatch: Colors.indigo,
      canvasColor: Color.fromRGBO(246, 247, 255, 1),
      primaryColor: Palette.primaryColor,
      primaryColorLight: Palette.primaryColorLight,
      buttonColor: Colors.indigo,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color.fromRGBO(244, 246, 253, 1),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
