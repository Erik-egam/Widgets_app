import 'package:flutter/material.dart';

const _colorList = <Color>[
  Colors.greenAccent,
  Colors.cyan,
  Colors.deepOrangeAccent,
  Colors.teal,
  Colors.tealAccent,
  Colors.pinkAccent,
  Colors.blueGrey,
  Colors.lightGreenAccent,
];


class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}): assert (selectedColor >= 0, "Color must be greater than 0"),
  assert (selectedColor<_colorList.length, "Color must be less than ${_colorList.length}");
  
  ThemeData getTheme(){
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(centerTitle: true,),
      useMaterial3: true,
      colorSchemeSeed: _colorList[selectedColor] 
    );
  }
}