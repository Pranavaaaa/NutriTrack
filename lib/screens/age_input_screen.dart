import 'package:flutter/material.dart';
import 'gender_input_screen.dart';
import '../screens/home_screen.dart';

class AgeInputScreen extends StatefulWidget {
  @override
  _AgeInputScreenState createState() => _AgeInputScreenState();
}

class _AgeInputScreenState extends State<AgeInputScreen> {
  final TextEditingController _ageController = TextEditingController();

  void _nextStep() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GenderInputScreen()),
    );
  }

  void _skipStep() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Your Age")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Age"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _nextStep, child: Text("Next")),
            TextButton(onPressed: _skipStep, child: Text("Skip")),
          ],
        ),
      ),
    );
  }
}
