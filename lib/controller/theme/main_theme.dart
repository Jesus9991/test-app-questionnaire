import 'package:flutter/material.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

/*
manejo del tema global de la aplicación
*/
class MainTheme {
  /*modo claro */
  static final ThemeData whiteTheme = ThemeData.light().copyWith(
    textTheme: TextsMainTheme.lightThemeFont,
    disabledColor: PaletteColorsTheme
        .greyColor, //Establece el color para los elementos desactivados
    dividerColor: PaletteColorsTheme.greyTwoColor, //Color del widget Divider()
    scaffoldBackgroundColor:
        PaletteColorsTheme.whiteColor, // Establece el color para el "scaffold"
    visualDensity: VisualDensity
        .adaptivePlatformDensity, //Adaptándose a diferentes tamaños y resoluciones de pantalla.
    unselectedWidgetColor:
        PaletteColorsTheme.greyColor, //widgets no seleccionados
    scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(10),
            thumbColor: MaterialStatePropertyAll(
                PaletteColorsTheme.whiteColor.withOpacity(0.5)),
            trackColor:
                const MaterialStatePropertyAll(PaletteColorsTheme.greyTwoColor))
        .copyWith(
            thumbColor:
                MaterialStateProperty.all(PaletteColorsTheme.greyColor)),
    appBarTheme: AppBarMainTheme.appbarLight,
    colorScheme:
        const ColorScheme.light(primary: PaletteColorsTheme.purpleColor),
    iconTheme:
        const IconThemeData(color: PaletteColorsTheme.purpleColor, size: 20),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: PaletteColorsTheme.purpleColor),
    inputDecorationTheme: InputDecorationMainTheme.inputDecorationTheme,
    outlinedButtonTheme: ButtonsMainTheme.outlinedButtonLight,

    elevatedButtonTheme: ButtonsMainTheme.elevatedButtonLight,
    textButtonTheme: ButtonsMainTheme.textButtonLight,
    iconButtonTheme: ButtonsMainTheme.iconButtonLight,
    dividerTheme: const DividerThemeData(color: PaletteColorsTheme.greyColor),
    splashColor: PaletteColorsTheme.greyColor,
    pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          //  TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        }),
    navigationBarTheme: NavBarMainThemeData.navigationBarLight,
  );
  /*modo oscuro*/
  static final ThemeData blackTheme = ThemeData.dark().copyWith(
    inputDecorationTheme: InputDecorationMainTheme.inputDecorationDark,
    textTheme: TextsMainTheme.darkThemeFont,
    disabledColor: PaletteColorsTheme
        .greyColor, //Establece el color para los elementos desactivados
    dividerColor: PaletteColorsTheme.greyTwoColor, //Color del widget Divider()
    scaffoldBackgroundColor:
        PaletteColorsTheme.darkColor, // Establece el color para el "scaffold"
    visualDensity: VisualDensity
        .adaptivePlatformDensity, //Adaptándose a diferentes tamaños y resoluciones de pantalla.
    unselectedWidgetColor: Colors.grey, //widgets no seleccionados
    scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(10),
            thumbColor: MaterialStatePropertyAll(
                PaletteColorsTheme.whiteColor.withOpacity(0.5)),
            trackColor:
                const MaterialStatePropertyAll(PaletteColorsTheme.greyTwoColor))
        .copyWith(
            thumbColor:
                MaterialStateProperty.all(PaletteColorsTheme.greyColor)),
    appBarTheme: AppBarMainTheme.appbarDark,
    colorScheme: const ColorScheme.dark(primary: PaletteColorsTheme.whiteColor),
    iconTheme:
        const IconThemeData(color: PaletteColorsTheme.purpleColor, size: 20),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: PaletteColorsTheme.whiteColor),
    outlinedButtonTheme: ButtonsMainTheme.outlinedButtonDark,
    elevatedButtonTheme: ButtonsMainTheme.elevatedButtonDark,
    textButtonTheme: ButtonsMainTheme.textButtonDark,
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      iconSize: MaterialStateProperty.all(25),
      iconColor: MaterialStateProperty.all(PaletteColorsTheme.purpleColor),
    )),
    dividerTheme: const DividerThemeData(color: PaletteColorsTheme.greyColor),
    splashColor: PaletteColorsTheme.greyColor,
    pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          //  TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        }),
    navigationBarTheme: NavBarMainThemeData.navigationBarDark,
    // tabBarTheme: TabBarTheme(),
  );
}
