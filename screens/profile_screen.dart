import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 40,
              child: Icon(Icons.person, size: 40),
            ),
            SizedBox(height: 20),
            Text("User Name"),
            Text("Mobile Number"),
            Text("Area"),
          ],
        ),
      ),
    );
  }
}