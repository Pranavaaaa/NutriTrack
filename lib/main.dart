import 'package:flutter/material.dart';
import './utils/theme.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/recipe_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: (context) => HomePage(),
      title:'NutriTrack',
      theme: appTheme,
      themeMode: ThemeMode.system,
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/recipes': (context) => RecipeListPage(),
      },

    );
  }
}


