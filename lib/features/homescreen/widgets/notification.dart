import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: (30),
              backgroundImage:
                  AssetImage("asset/images/dupatta-removebg-preview.png"),
              backgroundColor: Colors.grey.shade300,
            ),
            title: Text(
              'Your order has been deliverd',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.done,
              color: Colors.black,
            ),
            subtitle: Text(
              'Women Printed dupetta has been delivered.',
              style: TextStyle(color: Colors.black),
            ),
            selected: true,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: (30),
              backgroundImage:
                  AssetImage("asset/images/frock-removebg-preview.png"),
              backgroundColor: Colors.grey.shade300,
            ),
            title: Text(
              'Your order has been Shipped',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.done,
              color: Colors.black,
            ),
            subtitle: Text(
              'Women Printed frock has been shipped.',
              style: TextStyle(color: Colors.black),
            ),
            selected: true,
          ),
        ],
      ),
    );
  }
}
