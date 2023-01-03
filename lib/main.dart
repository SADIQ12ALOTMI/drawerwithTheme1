import 'package:code_flutter/Main_home.dart';

import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'Theme/theme.dart';
import 'config/config.dart';

void main() {

  runApp(
    EasyDynamicThemeWidget(
      child:const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      themeMode:
      MyConfig.isDynamicThemeActive
          ? EasyDynamicTheme.of(context).themeMode == ThemeMode.system
          ? brightness == Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light
          : EasyDynamicTheme.of(context).themeMode
          : ThemeMode.light,
      theme: AppTheme.light(context),
      darkTheme: AppTheme.dark(context),
      home: const HomePage(),
    );
  }
}
