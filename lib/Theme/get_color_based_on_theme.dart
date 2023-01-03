
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

Color getColorBasedOnTheme(
    BuildContext context, Color lightColor, Color darkColor) {
  return EasyDynamicTheme.of(context).themeMode == ThemeMode.dark
      ? darkColor
      : EasyDynamicTheme.of(context).themeMode == ThemeMode.system
          ? SchedulerBinding.instance.window.platformBrightness ==
                  Brightness.dark
              ? darkColor
              : lightColor
          : lightColor;
}

SystemUiOverlayStyle getOverlayStyleBasedOnTheme(BuildContext context) {
  return EasyDynamicTheme.of(context).themeMode == ThemeMode.dark
      ? SystemUiOverlayStyle.light
      : EasyDynamicTheme.of(context).themeMode == ThemeMode.system
          ? SchedulerBinding.instance.window.platformBrightness ==
                  Brightness.light
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.dark;
}
