import 'package:flutter/material.dart';
import 'package:test_maxopen/common/text_styles.dart';

class AppTheme {
  static const textColor = Colors.black;
  static const red = Colors.red;
  static const scaffoldBackgroundColor = Color(0xff1E1E1E);
  static const inActiveColor = Color(0xff6E6E6E);
  static const mainGreenColor = Color(0xff0CBA70);
  static const black = Color(0xff1E1E1E);
  static const textFieldColor = Color(0xff292929);
  static const whiteColor = Colors.white;

  static getTheme() {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(

        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        hintStyle: TxStyles.s11w400WhiteColorOP60_RfDewl,

        fillColor: textFieldColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: mainGreenColor, width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.light,
      // dialogBackgroundColor: whiteColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        // backgroundColor: whiteColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: textColor,
          //fontFamily: poppinsSemiBold,
          fontSize: 22,
        ),
      ),
      // hintColor: hintColor,
      // indicatorColor: textFieldIndicatorColor,

      textTheme: const TextTheme(
          // titleLarge: TextStyle(color: textColor, fontFamily: _get600Font(locale), fontSize: 22), /// 600
          // titleMedium: TextStyle(color: textColor, fontFamily: _get500Font(locale), fontSize: 16), /// 500
          // bodyMedium: TextStyle(color: textColor, fontFamily: _get400Font(locale), fontSize: 14), /// 400
          // bodySmall: const TextStyle(color: textColor, fontFamily: poppinsRegular, fontSize: 12), /// TODO
          ),
    );
  }
}
