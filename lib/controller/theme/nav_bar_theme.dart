import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';
/*
manejo del tema del nav bar 
*/

class NavBarMainThemeData {
  /*tipo de fuente */
  static TextStyle typeFont = GoogleFonts.openSans();

  //Todo: input modo claro
  static NavigationBarThemeData navigationBarLight = NavigationBarThemeData(
    elevation: 0,
    backgroundColor: PaletteColorsTheme.whiteColor,
    shadowColor: PaletteColorsTheme.transparentColor,
    indicatorColor: PaletteColorsTheme.purpleColor.withOpacity(0.1),
    labelTextStyle: MaterialStatePropertyAll(
      typeFont.copyWith(fontSize: 10, fontWeight: FontWeight.w600),
    ),
  );
  //Todo: input modo oscuro
  static NavigationBarThemeData navigationBarDark = NavigationBarThemeData(
    elevation: 0,
    backgroundColor: PaletteColorsTheme.darkColor,
    shadowColor: PaletteColorsTheme.transparentColor,
    indicatorColor: PaletteColorsTheme.whiteColor.withOpacity(0.1),
    labelTextStyle: MaterialStatePropertyAll(
      typeFont.copyWith(fontSize: 10, fontWeight: FontWeight.w600),
    ),
  );
}
