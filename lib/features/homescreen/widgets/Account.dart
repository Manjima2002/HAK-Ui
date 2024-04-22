import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/homescreen/home_page.dart';
import 'package:flutter_application_1/features/homescreen/widgets/editprofile.dart';
import 'package:flutter_application_1/features/homescreen/widgets/myprofile.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.pinkAccent),
                accountName: Text(
                  "Anjali Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("anjali977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 231, 226, 230),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.pinkAccent),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myprofile()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Editprofile()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
