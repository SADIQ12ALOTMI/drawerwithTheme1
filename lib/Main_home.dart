
import 'package:code_flutter/Theme/styles/colors.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'DrawrWidget/drawarWidget.dart';
import 'Theme/get_color_based_on_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHome(),
appBar: AppBar(
  backgroundColor: getColorBasedOnTheme(
      context, kAppBarColorLight, kAppBarColorDark),
  actions: [
    EasyDynamicThemeSwitch(),
  ],
),
      body: Center(
        child: Column(
          children: const [
            Text("home"),
          ],
        ),
      ),
    );
  }
}
