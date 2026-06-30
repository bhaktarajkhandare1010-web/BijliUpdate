import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text("Power Cut Alert"),
            subtitle: Text("Khar Area - 10 AM to 1 PM"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build),
            title: Text("Maintenance Notice"),
            subtitle: Text("Scheduled maintenance tomorrow"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.check_circle),
            title: Text("Power Restored"),
            subtitle: Text("Electricity restored successfully"),
          ),
        ],
      ),
    );
  }
}