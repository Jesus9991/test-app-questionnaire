import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

/*
clase para manejar los tipos de fuentes del tema oscuro o claro 
*/
class TextsMainTheme {
  /*tipo de fuente */
  static TextStyle typeFont = GoogleFonts.openSans();

  //Todo: textos para el modo claro
  static TextTheme lightThemeFont = TextTheme(
    //
    headlineLarge: typeFont.copyWith(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.blackColor),
    headlineMedium: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.blackColor),
    headlineSmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.blackColor),
    //
    titleLarge: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: PaletteColorsTheme.blackColor),
    titleMedium: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: PaletteColorsTheme.blackColor),
    titleSmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: PaletteColorsTheme.blackColor),
    //
    bodyLarge: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.purpleColor),
    bodyMedium: typeFont.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: PaletteColorsTheme.purpleColor),
    bodySmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w200,
        color: PaletteColorsTheme.blackColor),
    //
    labelLarge: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: PaletteColorsTheme.greyTwoColor),
    labelMedium: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: PaletteColorsTheme.greyTwoColor),
    labelSmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: PaletteColorsTheme.greyTwoColor),
  );
  //Todo: textos para el modo oscuro
  static TextTheme darkThemeFont = TextTheme(
    //
    headlineLarge: typeFont.copyWith(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.whiteColor),
    headlineMedium: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.whiteColor),
    headlineSmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.whiteColor),
    //
    titleLarge: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: PaletteColorsTheme.whiteColor),
    titleMedium: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: PaletteColorsTheme.whiteColor),
    titleSmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: PaletteColorsTheme.whiteColor),
    //
    bodyLarge: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: PaletteColorsTheme.whiteColor),
    bodyMedium: typeFont.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: PaletteColorsTheme.whiteColor),
    bodySmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w200,
        color: PaletteColorsTheme.whiteColor),
    //
    labelLarge: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: PaletteColorsTheme.greyTwoColor),
    labelMedium: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: PaletteColorsTheme.greyTwoColor),
    labelSmall: typeFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: PaletteColorsTheme.greyTwoColor),
  );
}
