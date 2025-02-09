import 'package:flutter/material.dart';
import './utils/theme.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/recipe_list_screen.dart';
import './screens/age_input_screen.dart';
import './screens/landing_page.dart'; // Import Landing Page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'NutriTrack',
      theme: appTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/', // Start from the Landing Page

      routes: {
        '/': (context) => LandingPage(), // New Landing Page
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/recipes': (context) => RecipeListPage(),
        '/age_input': (context) => AgeInputScreen(),
      },

      // Handle unknown routes (optional)
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text("404 - Page Not Found")),
          ),
        );
      },
    );
  }
}
