import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appColors.dart';

@immutable
class AppSettings {
  static String colorBackground = '0xFF171926';
  static String colorText = '0xffd7dbf6';
  static String colorPrimary = '0xFFfee400';
  static String colorSecondary = '0xFFfee400';
  static String imageBackground = 'assets/images/default_screen.jpg';

  static ThemeData define() {
    return ThemeData(
        scaffoldBackgroundColor: appColors().colorBackground,
        primaryColor: Color(int.parse(colorPrimary)),
        focusColor: appColors().primaryColorApp,
        unselectedWidgetColor: appColors().colorTextHead,
        cardColor: Color(int.parse(colorPrimary)),
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: appColors().primaryColorApp)
                .copyWith(secondary: Color(int.parse(colorSecondary)))
                .copyWith(background: Color(int.parse(colorBackground))));
  }

  const AppSettings();
}
