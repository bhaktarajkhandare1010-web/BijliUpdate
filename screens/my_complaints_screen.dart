import 'package:flutter/material.dart';

class MyComplaintsScreen extends StatelessWidget {
  const MyComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Complaints"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.report_problem),
            title: Text("Power Failure"),
            subtitle: Text("Status: Pending"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.electrical_services),
            title: Text("Low Voltage"),
            subtitle: Text("Status: In Progress"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.check_circle),
            title: Text("Street Light Issue"),
            subtitle: Text("Status: Resolved"),
          ),
        ],
      ),
    );
  }
}