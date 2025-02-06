import 'package:flutter/material.dart';
import 'package:todo/core/app_colors.dart';

class AppTheme{
  static ThemeData light=ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.main,
    scaffoldBackgroundColor: AppColors.lightBg,
    appBarTheme: AppBarTheme(
      color: AppColors.main,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      toolbarHeight: 150
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: AppColors.grey,
      selectedItemColor: AppColors.main,
      showSelectedLabels: false,
      showUnselectedLabels: false
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.main,
      foregroundColor: Colors.white,
      shape: CircleBorder(side: BorderSide(width: 4,color: Colors.white))
    )
  );

  static ThemeData dark=ThemeData(
      scaffoldBackgroundColor: AppColors.darkBg,
      appBarTheme: AppBarTheme(

      )
  );
}