import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  // Set the primary swatch to green
  primarySwatch: Colors.green,
  
  // Set the background color of the scaffold to white
  scaffoldBackgroundColor: Colors.white,
  
  // Define the AppBar theme
  appBarTheme: AppBarTheme(
    // Set the background color of the AppBar to green
    backgroundColor: Colors.green,
    // Set the text style of the AppBar title to white with font size 20
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  
  // Define the ElevatedButton theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // Set the background color of the ElevatedButton to green
      backgroundColor: Colors.green,
      // Set the text color of the ElevatedButton to white
      foregroundColor: Colors.white,
    ),
  ),
  
  // Define the FloatingActionButton theme
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    // Set the background color of the FloatingActionButton to blue
    backgroundColor: Colors.blue,
    // Set the text color of the FloatingActionButton to white
    foregroundColor: Colors.white,
  ),
  
  // Define the TextButton theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      // Set the text color of the TextButton to blue
      foregroundColor: Colors.blue,
    ),
  ),
);