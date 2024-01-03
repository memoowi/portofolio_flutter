import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portofolio/screens/portofolio.dart';
import 'package:portofolio/utils/custom_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: CustomColors.primary,
    statusBarColor: CustomColors.primary,
  ));
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: CustomColors.primary,
      splashColor: CustomColors.primary,
      highlightColor: CustomColors.primary,
    ),
    title: 'Misbach Portfolio',
    home: const Portofolio(),
    debugShowCheckedModeBanner: false,
  ));
}
