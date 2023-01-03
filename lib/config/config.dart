import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Theme/get_color_from.hex.dart';


class MyConfig {

  static final Color primaryColor = HexColor("#5c5ff5");
  static final Color accentColor = HexColor("#5c5ffC");

  static final Color gradientColor1 = HexColor("#B12704");
  static final Color gradientColor2 = HexColor("#F75463");


  static Widget loadingIndicator({
    required Color color,
    required Duration duration,
    required double size,
  }) =>
      SpinKitRing(color: color, size: size, duration: duration);



  static const bool isDynamicThemeActive = true;

  MyConfig._();
}
