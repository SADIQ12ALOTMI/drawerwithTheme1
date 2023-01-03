import 'package:code_flutter/Theme/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//main color
final Color _lightPrimaryColor = kPrimaryColor.withOpacity(0.1);


//Background Colors
Color _lightBackgroundAppBarColor = _lightPrimaryColor;

TextStyle _textStyle(BuildContext context, double size, Color color) =>
    GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: size,
        color: color,
        letterSpacing: 0,
      ),
    );

TextTheme darkTextTheme(BuildContext context) {
  return GoogleFonts.latoTextTheme(
    Theme.of(context).textTheme,
  ).copyWith(
    //bodyText1: TextStyle(fontSize: 18, color: kSecondaryDarkTextColor),
    bodyText1: _textStyle(context, 18, kPrimaryLightTextColor),
    //bodyText2: TextStyle(fontSize: 16, color: kSecondaryDarkTextColor),
    bodyText2: _textStyle(context, 16, kPrimaryLightTextColor),
    // button: TextStyle(
    //     fontSize: 16,
    //     color: kPrimaryLightTextColor,
    //     fontWeight: FontWeight.bold),
    button: _textStyle(context, 16, kPrimaryLightTextColor),

    // headline6: TextStyle(fontSize: 18, color: kPrimaryDarkTextColor),
    headline6: _textStyle(context, 18, kPrimaryLightTextColor),
    //headline5: TextStyle(fontSize: 24, color: kPrimaryDarkTextColor),
    headline5: _textStyle(context, 24, kPrimaryLightTextColor),
    //headline4: TextStyle(fontSize: 34, color: kPrimaryDarkTextColor),
    headline4: _textStyle(context, 34, kPrimaryLightTextColor),
    //headline3: TextStyle(fontSize: 44, color: kPrimaryDarkTextColor),
    headline3: _textStyle(context, 44, kPrimaryLightTextColor),
    //headline2: TextStyle(fontSize: 54, color: kPrimaryDarkTextColor),
    headline2: _textStyle(context, 54, kPrimaryLightTextColor),
    //headline1: TextStyle(fontSize: 64, color: kPrimaryDarkTextColor),
    headline1: _textStyle(context, 64, kPrimaryLightTextColor),
    //subtitle1: TextStyle(fontSize: 16, color: kSecondaryDarkTextColor),
    subtitle1: _textStyle(context, 16, kPrimaryLightTextColor),
    // subtitle2: TextStyle(fontSize: 14.0, color: kSecondaryDarkTextColor),
    subtitle2: _textStyle(context, 14.0, kPrimaryLightTextColor),
    //caption: TextStyle(fontSize: 12.0, color: kSecondaryDarkTextColor),
    caption: _textStyle(context, 12.0, kPrimaryLightTextColor),

    // overline: TextStyle(
    //     fontSize: 10.0, color: kSecondaryDarkTextColor, letterSpacing: 0),
    overline: _textStyle(context, 10.0, kPrimaryLightTextColor),
  );
}

ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme:  const AppBarTheme(

      color: kAppBarColorDark,
    ),
    scaffoldBackgroundColor: kDarkBgColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    cardTheme: const CardTheme(color: kDarkCardBgColor, elevation: 0),
    colorScheme: ColorScheme.dark(
      primary: _lightPrimaryColor,
      secondary: _lightPrimaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
        backgroundColor: kDarkColor, actionTextColor: kPrimaryLightTextColor),
    iconTheme: const IconThemeData(
      color: kLightColor,
    ),
    switchTheme: SwitchThemeData(
      overlayColor: MaterialStateProperty.all(kPrimaryColor),
      trackColor: MaterialStateProperty.all(kAccentColor),
      thumbColor: MaterialStateProperty.all(kPrimaryColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: kPrimaryColor,
      foregroundColor: kLightColor,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    )),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: _lightPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _lightPrimaryColor,
    timePickerTheme: TimePickerThemeData(
      backgroundColor: kPrimaryColor,
    ));
