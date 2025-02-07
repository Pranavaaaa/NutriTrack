import 'package:flutter/material.dart';
import 'pages/loginpage.dart'; // Ensure the file exists

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // Make sure LoginPage is defined in loginpage.dart
    );
  }
}
