
import 'package:flutter/material.dart';
import 'package:javierchauvin/view/design/colors.dart';

class JTheme {
  //
  JTheme._();

//  static final ThemeData lightTheme = ThemeData(
//      visualDensity: VisualDensity.adaptivePlatformDensity,
//      scaffoldBackgroundColor: AppColors.whiteK,
//      brightness: Brightness.light,
//      appBarTheme: AppBarTheme(
//        brightness: Brightness.dark,
//        color: AppColors.greenD400K,
//        iconTheme: IconThemeData(
//          color: AppColors.whiteK,
//        ),
//      ),
//      primaryTextTheme: GoogleFonts.latoTextTheme().apply(
//        bodyColor: AppColors.whiteK,
//        displayColor: AppColors.whiteK,
//      ),
//      primaryColor: AppColors.greenD500K,
//      primaryColorBrightness: Brightness.light,
//      primaryColorLight: AppColors.greenD400K,
//      primaryColorDark: AppColors.greenD600K,
//      accentColor: AppColors.yellowK,
//      accentColorBrightness: Brightness.light,
//      backgroundColor: AppColors.whiteK,
//      buttonColor: AppColors.greenD500K,
//      buttonTheme: ButtonThemeData(
//          textTheme: ButtonTextTheme.normal,
//          disabledColor: AppColors.sGreyK,
//          buttonColor: AppColors.greenD500K,
//          highlightColor: Colors.white12,
//          splashColor: Colors.white24),
//      cardTheme: CardTheme(
//        color: AppColors.whiteBodyContent,
//      ),
//      iconTheme: IconThemeData(
//        color: AppColors.whiteK,
//      ),
//      textTheme: GoogleFonts.latoTextTheme().apply(
//        bodyColor: AppColors.greyK,
//        displayColor: AppColors.greyKBody,
//      ),
//      inputDecorationTheme: InputDecorationTheme(
//        errorStyle: TextStyle(color: Colors.yellow, fontSize: 11),
//        hintStyle: TextStyle(
//            color: AppColors.greyKDarkText,
//            fontSize: 13,
//            fontWeight: FontWeight.w100),
//      ));

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //scaffoldBackgroundColor: AppColors.greyKBody,
//    appBarTheme: AppBarTheme(
//      color: AppColors.greyK,
//      iconTheme: IconThemeData(
//        color: AppColors.yellowK,
//      ),
//    ),
    splashColor: Colors.white24,
    primaryColor: JColors.Lime3,
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: JColors.Lime1,
    primaryColorDark: JColors.Lime4,
//    accentColor: AppColors.yellowK,
    accentColorBrightness: Brightness.light,
    iconTheme: IconThemeData( color: JColors.Lime3),
//    backgroundColor: AppColors.whiteK,
//    buttonColor: AppColors.greenD600K,
//    cardTheme: CardTheme(
//      color: AppColors.greyK,
//    ),
//    iconTheme: IconThemeData(
//      color: AppColors.Lime3,
//    ),
//    textTheme:  GoogleFonts.montserratAlternatesTextTheme().apply(
//      bodyColor: Colors.white,
//      displayColor: AppColors.Lime3,

    //),
  );
}