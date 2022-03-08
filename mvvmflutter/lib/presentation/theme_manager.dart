import 'package:flutter/material.dart';
import '/presentation/presentation.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

      splashColor: ColorManager.primaryOpacity70,

      accentColor: ColorManager.grey,

  cardTheme: CardTheme(
    color: ColorManager.white,
    shadowColor: ColorManager.grey,
    elevation: AppSize.s4),

  appBarTheme: AppBarTheme(
    centerTitle: true,
    color: ColorManager.primary,
    elevation: AppSize.s4,
    shadowColor: ColorManager.primaryOpacity70,
    titleTextStyle: getRegularStyle(
        color: ColorManager.white, fontSize: FontSize.s16)),

  buttonTheme: ButtonThemeData(
    shape: StadiumBorder(),
    disabledColor: ColorManager.grey1,
    buttonColor: ColorManager.primary,
    splashColor: ColorManager.primaryOpacity70),
    
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: getRegularStyle(color: ColorManager.white),
      primary: ColorManager.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)     
      ),
    ),      
  ),

  textTheme: TextTheme(
    headline1: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16),
    subtitle1: getRegularStyle(
        color: ColorManager.grey),
    caption: getRegularStyle(
        color: ColorManager.grey)
    )



  );
}