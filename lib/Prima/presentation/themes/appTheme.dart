import 'package:flutter/material.dart';

import 'appcolors.dart';

class AppTheme {
  static ThemeData get theme1 => ThemeData(
        iconButtonTheme: const IconButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
        )),
        // scaffoldBackgroundColor: AppColors.backgroundColor,
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(AppColors.buttonColor),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
        )),
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.blackColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.blackColor),
            ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: const BorderSide(color: AppColors.blackColor),
            // ),
            contentPadding: const EdgeInsets.all(20),
            hintStyle: TextStyle(color: AppColors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.never),
        primarySwatch: Colors.blue,
      );
}
