import 'package:flutter/material.dart';
import './theme.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: (context) => HomePage(),

      theme:appTheme,
      themeMode: ThemeMode.system,
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },

    );
  }
}


