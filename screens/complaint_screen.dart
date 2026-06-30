import 'package:flutter/material.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Complaint"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Complaint Type",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Submit Complaint"),
            ),
          ],
        ),
      ),
    );
  }
}import 'package:flutter/material.dart';

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