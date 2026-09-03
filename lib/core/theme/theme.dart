import 'package:flutter/material.dart';

abstract class AppTheme{
  ThemeData  themeData=ThemeData();
}
class LightTheme implements AppTheme{
  @override
  ThemeData themeData=ThemeData(
    brightness: .light,
  );

}
class DarkTheme implements AppTheme{
  @override
  ThemeData themeData=ThemeData(
    brightness: .dark,
  );

}