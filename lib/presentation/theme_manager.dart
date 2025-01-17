import 'package:flutter/material.dart';
import 'package:mvvm_app/presentation/color_manager.dart';
import 'package:mvvm_app/presentation/font_manager.dart';
import 'package:mvvm_app/presentation/stayles_manager.dart';
import 'package:mvvm_app/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,//ripple effect color

    //cardView theme
    cardTheme:  CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    //app bar theme
    appBarTheme:  AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
    ),
    ),
    //button theme
    buttonTheme:  ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
      ),
    //elevated button theme
    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17), backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        )
      )
    ),

      
      //input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle: getRegularStyle(color: Colors.grey),
        labelStyle: getMediumStyle(color: Colors.grey),
        errorStyle: getBoldStyle(color: Colors.red),
      ),
  );
}
