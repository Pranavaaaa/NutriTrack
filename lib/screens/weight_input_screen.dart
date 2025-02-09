import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class WeightInputScreen extends StatefulWidget {
  @override
  _WeightInputScreenState createState() => _WeightInputScreenState();
}

class _WeightInputScreenState extends State<WeightInputScreen> {
  final TextEditingController _weightController = TextEditingController();

  void _finishSetup() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
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
      appBar: AppBar(title: Text("Enter Your Weight")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Weight (kg)"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _finishSetup, child: Text("Finish")),
            TextButton(onPressed: _skipStep, child: Text("Skip")),
          ],
        ),
      ),
    );
  }
}
