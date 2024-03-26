import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

/*decoración y thema para el modo claro y oscuro*/
class InputDecorationMainTheme {
  /*tipo de fuente */
  static TextStyle typeFont = GoogleFonts.openSans();

  //Todo: input modo claro
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2),
    iconColor: PaletteColorsTheme.purpleColor,
    fillColor: PaletteColorsTheme.purpleColor,
    prefixIconColor: PaletteColorsTheme.purpleColor,
    suffixIconColor: PaletteColorsTheme.purpleColor,
    hintStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: PaletteColorsTheme.blackColor),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
            color: PaletteColorsTheme.greyTwoColor, width: 1.0)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
            color: PaletteColorsTheme.greyTwoColor, width: 1.0)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: PaletteColorsTheme.purpleColor.withOpacity(0.4),
            width: 2.0)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:
            const BorderSide(color: PaletteColorsTheme.redColor, width: 2.0)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:
            const BorderSide(color: PaletteColorsTheme.redColor, width: 2.0)),
  );
  //Todo: input modo oscuro
  static InputDecorationTheme inputDecorationDark = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2),
    iconColor: PaletteColorsTheme.purpleColor,
    fillColor: PaletteColorsTheme.purpleColor,
    prefixIconColor: PaletteColorsTheme.purpleColor,
    suffixIconColor: PaletteColorsTheme.purpleColor,
    hintStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: PaletteColorsTheme.whiteColor),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
            color: PaletteColorsTheme.greyTwoColor, width: 1.0)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
            color: PaletteColorsTheme.greyTwoColor, width: 1.0)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: PaletteColorsTheme.whiteColor.withOpacity(0.4), width: 2.0)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:
            const BorderSide(color: PaletteColorsTheme.redColor, width: 2.0)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:
            const BorderSide(color: PaletteColorsTheme.redColor, width: 2.0)),
  );
}
