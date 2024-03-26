import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

/*
tema para manejar el appbar de la aplicación
*/
class AppBarMainTheme {
  /*tipo de fuente */
  static TextStyle typeFont = GoogleFonts.openSans();
  //Todo: modo claro
  static AppBarTheme appbarLight = AppBarTheme(
    iconTheme:
        const IconThemeData(color: PaletteColorsTheme.purpleColor, size: 25),
    actionsIconTheme:
        const IconThemeData(color: PaletteColorsTheme.purpleColor, size: 25),
    color: PaletteColorsTheme.transparentColor,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: PaletteColorsTheme.blackColor),
  );
  //Todo: modo oscuro
  static AppBarTheme appbarDark = AppBarTheme(
    iconTheme:
        const IconThemeData(color: PaletteColorsTheme.purpleColor, size: 25),
    actionsIconTheme:
        const IconThemeData(color: PaletteColorsTheme.purpleColor, size: 25),
    color: PaletteColorsTheme.transparentColor,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: PaletteColorsTheme.whiteColor),
  );
}
