import 'package:flutter/material.dart';
import 'package:test_maxopen/common/app_theme.dart';

class TxStyles {
  static TextStyle s11w400WhiteColorOP60_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW400,
    fontSize: 11,
    color: AppTheme.whiteColor.withOpacity(.6),
  );
  static TextStyle s8w400WhiteColorOP60_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW400,
    fontSize: 8,
    color: AppTheme.whiteColor.withOpacity(.6),
  );

  static TextStyle s11w400WhiteColor_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW400,
    fontSize: 11,
    color: AppTheme.whiteColor,
  );

  static TextStyle s13w400WhiteColor_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW400,
    fontSize: 13,
    color: AppTheme.whiteColor,
  );

  static TextStyle s10w400WhiteColor_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW400,
    fontSize: 10,
    color: AppTheme.whiteColor,
  );

  static TextStyle s16w700WhiteColor_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW700,
    fontSize: 16,
    color: AppTheme.whiteColor,
  );

  static TextStyle s12w400WhiteColor_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW400,
    fontSize: 12,
    color: AppTheme.whiteColor,
  );

  static TextStyle s19w700WhiteColor_RfDewl = TextStyle(
    fontFamily: Fonts.RFDewiW700,
    fontSize: 19,
    color: AppTheme.whiteColor,
  );

  static TextStyle s13w500WhiteColor_SFProDisplay = TextStyle(
    fontFamily: Fonts.SFProDisplayW500,
    fontSize: 13,
    color: AppTheme.whiteColor,
  );
  static TextStyle s15w500WhiteColor_SFProDisplay = TextStyle(
    fontFamily: Fonts.SFProDisplayW500,
    fontSize: 15,
    color: AppTheme.whiteColor,
  );
  static TextStyle s10w500MainGreenColor_SFProDisplay = TextStyle(
    fontFamily: Fonts.SFProDisplayW500,
    fontSize: 10,
    color: AppTheme.mainGreenColor,
  );
  static TextStyle s9w500inActiveColorColor_SFProDisplay = TextStyle(
    fontFamily: Fonts.SFProDisplayW500,
    fontSize: 9,
    color: AppTheme.inActiveColor,
  );
  static TextStyle s9w500WhiteColor_SFProDisplay = TextStyle(
    fontFamily: Fonts.SFProDisplayW500,
    fontSize: 9,
    color: AppTheme.whiteColor,
  );
}

class Fonts {
  static String RFDewiW400 = 'RFDewi-400';
  static String RFDewiW700 = 'RFDewi-700';
  static String SFProDisplayW500 = 'SF-Pro-Display-500';
}
