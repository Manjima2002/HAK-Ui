import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/homescreen/widgets/Account.dart';
import 'package:flutter_application_1/features/homescreen/widgets/cart.dart';
import 'package:flutter_application_1/features/homescreen/widgets/cart2.dart';
import 'package:flutter_application_1/features/homescreen/widgets/notification.dart';
import 'package:flutter_application_1/features/homescreen/wishlist.dart';

AppBar appbar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Account()),
        );
      },
      icon: const Icon(Icons.account_circle),
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
            MaterialPageRoute(builder: (context) => const Notifications()),
          );
        },
        icon: Icon(
          Icons.notifications,
          color: Colors.amber.shade800,
        ),
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Carts()),
          );
        },
        icon: const Icon(
          Icons.shopping_cart,
          color: Colors.pinkAccent,
        ),
      ),
    ],
  );
}
