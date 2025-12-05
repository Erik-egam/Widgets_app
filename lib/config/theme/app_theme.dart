import 'package:flutter/material.dart';

const colorList = <Color>[
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
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false}): assert (selectedColor >= 0, "Color must be greater than 0"),
  assert (selectedColor<colorList.length, "Color must be less than ${colorList.length}");
  
  ThemeData getTheme(){
    return ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(centerTitle: true,),
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor] 
    );
    }
  AppTheme copyWith(
    {int? selectedColor, bool? isDarkMode}
  ) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode
  );



}