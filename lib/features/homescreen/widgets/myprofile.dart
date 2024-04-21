import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/homescreen/home_page.dart';
import 'package:flutter_application_1/features/homescreen/widgets/Account.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Account()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black, 
          fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    padding: EdgeInsets.all(16),
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                ProfileTile(
                  label: 'Anjali Mishra',
                  icon: Icons.person,
                ),
                ProfileTile(
                  label: '123456789',
                  icon: Icons.phone,
                ),
                ProfileTile(
                  label: 'Email',
                  icon: Icons.email,
                ),
                ProfileTile(
                  label: 'Pincode',
                  icon: Icons.pin,
                ),
                ProfileTile(
                  label: 'State',
                  icon: Icons.location_city,
                ),
                ProfileTile(
                  label: 'City',
                  icon: Icons.pin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String label;
  final IconData icon;
  const ProfileTile({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: Colors.pinkAccent,
          ),
          title: Text(label),
        ),
        Divider(),
      ],
    );
  }
}
