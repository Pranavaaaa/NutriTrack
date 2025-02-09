import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: const Text("Welcome to Home Page"),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        animatedIconTheme: const IconThemeData(size: 22.0),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.fastfood),
            label: "Log Food",
            onTap: () => print("Log Food Pressed"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.camera_alt),
            label: "Scan Food",
            onTap: () => print("Scan Food Pressed"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.qr_code_scanner),
            label: "Barcode Scan",
            onTap: () => print("Barcode Scan Pressed"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.local_drink),
            label: "Water",
            onTap: () => print("Water Pressed"),
          ),
        ],
      ),
    );
  }
}
