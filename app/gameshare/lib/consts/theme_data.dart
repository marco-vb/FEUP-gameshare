import 'package:flutter/material.dart';
import 'package:gameshare/consts/app_colors.dart';



ThemeData lightTheme=ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: MyAppColors.midnightBlue,
  backgroundColor: Colors.white,

  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: MyAppColors.darkBlue,
    titleTextStyle: TextStyle(
      color: MyAppColors.lightGreen,
      fontSize: 25,
    ),

  ),

  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll<Color>(MyAppColors.lightGreen),
      iconSize: MaterialStatePropertyAll<double>(30),
  )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor:  MyAppColors.lightGreen,
    unselectedItemColor:  MyAppColors.lightBlue,
  ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: MyAppColors.lightGreen,
    ),
  shadowColor: MyAppColors.grey,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: MyAppColors.lightGrey,
  ),
  accentColor: MyAppColors.purple,



);

ThemeData darkTheme=ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: MyAppColors.midnightBlue ,
  primaryColor: Colors.white ,
  backgroundColor: MyAppColors.darkBlue,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: MyAppColors.darkBlue,
    titleTextStyle: TextStyle(
      color: MyAppColors.lightGreen,
      fontSize: 25,
    ),

  ),

  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll<Color>(MyAppColors.lightGreen),
      iconSize: MaterialStatePropertyAll<double>(30),
    )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor:  MyAppColors.lightGreen,
    unselectedItemColor:  MyAppColors.lightBlue,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: MyAppColors.lightGreen,
  ),
  shadowColor: MyAppColors.darkGrey,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: MyAppColors.darkBlue,
    ),
  accentColor: MyAppColors.lightGreen,

);