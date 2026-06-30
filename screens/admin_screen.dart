import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Panel"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text("Manage Complaints"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.electric_bolt),
            title: Text("Power Updates"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Send Notifications"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Users List"),
          ),
        ],
      ),
    );
  }
}