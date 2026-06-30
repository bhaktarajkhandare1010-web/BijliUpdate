import 'package:flutter/material.dart';

void main() {
  runApp(const BijliUpdateApp());
}

class BijliUpdateApp extends StatelessWidget {
  const BijliUpdateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bijli Update',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("⚡ Bijli Update"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Bijli Update",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}