import 'package:code_flutter/Theme/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dark_theme.dart';
import 'light_theme.dart';


class AppTheme {
  AppTheme._();

  static light(BuildContext context) {
    return lightTheme.copyWith(
      textTheme: lightTextTheme(context),
      appBarTheme: const AppBarTheme().copyWith(
        color: kPrimaryColor,
        iconTheme: const IconThemeData(color: kLightColor),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        centerTitle: true,
        foregroundColor: kLightColor,
        toolbarHeight: 64,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        titleTextStyle: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline6,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static dark(BuildContext context) {
    return darkTheme.copyWith(
      textTheme: darkTextTheme(context),
      appBarTheme: const AppBarTheme().copyWith(
        color: kPrimaryColor,
        iconTheme: const IconThemeData(color: kLightColor),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        centerTitle: true,
        foregroundColor: kLightColor,
        toolbarHeight: 64,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        titleTextStyle: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline6,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
