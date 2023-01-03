
import 'package:code_flutter/constants.dart';
import 'package:flutter/material.dart';

ThemeData themeData=ThemeData(

  scaffoldBackgroundColor:zBGColor,
backgroundColor: zBGColorDeep,

appBarTheme: const AppBarTheme(
  backgroundColor: zSlideBarColor,

  centerTitle: true,
),
  primaryColor: zPrimaryColor,


);


ThemeData themeDark=ThemeData(

  scaffoldBackgroundColor:zBGColor,
  backgroundColor: zDBGColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: zDBGColor,
    centerTitle: true,
  ),
  primaryColor: zPrimaryColor,


);