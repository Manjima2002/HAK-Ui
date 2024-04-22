import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/homescreen/home_page.dart';
import 'package:flutter_application_1/features/homescreen/saree.dart';
import 'package:flutter_application_1/features/homescreen/widgets/cart.dart';
import 'package:flutter_application_1/features/homescreen/wishlist.dart';

class Sareedescription extends StatefulWidget {
  const Sareedescription({super.key});

  @override
  State<Sareedescription> createState() => _SareedescriptionState();
}

class _SareedescriptionState extends State<Sareedescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Text(
            "Saree",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Wishlist()),
              );
            },
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "asset/images/saree5-removebg-preview.png",
              height: 300,
            ),
          ),
          Row(children: [
            Text(
              "Product Title",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ])
        ],
      ),
    );
  }
}
