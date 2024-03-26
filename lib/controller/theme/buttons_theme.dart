import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

/*
tema para los botones
*/
class ButtonsMainTheme {
  /*tipo de fuente */
  static TextStyle typeFont = GoogleFonts.openSans();

  //Todo: textos para el modo claro
  static ElevatedButtonThemeData elevatedButtonLight = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: typeFont.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: PaletteColorsTheme.whiteColor),
          elevation: 0,
          foregroundColor:
              PaletteColorsTheme.whiteColor, //color de las letras */
          backgroundColor: PaletteColorsTheme.purpleColor, //color del boton */
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))));
  //
  static OutlinedButtonThemeData outlinedButtonLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: PaletteColorsTheme.blackColor,
      ),
      backgroundColor: PaletteColorsTheme.transparentColor,
      surfaceTintColor: PaletteColorsTheme.transparentColor,
      disabledBackgroundColor: PaletteColorsTheme.greyColor,
      disabledForegroundColor: PaletteColorsTheme.greyColor,
      elevation: 0,
      shadowColor: PaletteColorsTheme.transparentColor,
      side: const BorderSide(color: PaletteColorsTheme.greyColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
            color: PaletteColorsTheme.greyColor), // Color del borde
      ),
    ),
  );
  //
  static TextButtonThemeData textButtonLight = TextButtonThemeData(
      style: TextButton.styleFrom(
    textStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: PaletteColorsTheme.whiteColor),
    elevation: 0,
    foregroundColor: PaletteColorsTheme.purpleColor,
  ));

  static IconButtonThemeData iconButtonLight = IconButtonThemeData(
      style: ButtonStyle(
    iconSize: MaterialStateProperty.all(25),
    iconColor: MaterialStateProperty.all(PaletteColorsTheme.purpleColor),
  ));
  //Todo: textos para el modo oscuro

  static OutlinedButtonThemeData outlinedButtonDark = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    textStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: PaletteColorsTheme.whiteColor),
    backgroundColor: PaletteColorsTheme.transparentColor,
    surfaceTintColor: PaletteColorsTheme.transparentColor,
    disabledBackgroundColor: PaletteColorsTheme.greyColor,
    disabledForegroundColor: PaletteColorsTheme.greyColor,
    elevation: 0,
    shadowColor: PaletteColorsTheme.transparentColor,
    side: const BorderSide(color: PaletteColorsTheme.purpleColor),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      side: const BorderSide(
          color: PaletteColorsTheme.purpleColor), // Color del borde
    ),
  ));
  static ElevatedButtonThemeData elevatedButtonDark = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: typeFont.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: PaletteColorsTheme.whiteColor),
          foregroundColor:
              PaletteColorsTheme.whiteColor, //color de las letras */
          backgroundColor: PaletteColorsTheme.purpleColor, //color del boton */
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))));
  static TextButtonThemeData textButtonDark = TextButtonThemeData(
      style: TextButton.styleFrom(
    textStyle: typeFont.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: PaletteColorsTheme.whiteColor),
    elevation: 0,
    foregroundColor: PaletteColorsTheme.whiteColor,
  ));
}
