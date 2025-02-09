import 'package:flutter/material.dart';
import 'weight_input_screen.dart';
import '../screens/home_screen.dart';

class GenderInputScreen extends StatefulWidget {
  @override
  _GenderInputScreenState createState() => _GenderInputScreenState();
}

class _GenderInputScreenState extends State<GenderInputScreen> {
  String _selectedGender = "Male"; // Default gender

  void _nextStep() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WeightInputScreen()),
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
      appBar: AppBar(title: Text("Select Your Gender")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: _selectedGender,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue!;
                });
              },
              items: ["Male", "Female", "Other"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
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
