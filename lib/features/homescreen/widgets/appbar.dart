  import 'package:flutter/material.dart';

AppBar appbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.account_circle),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: Colors.amber.shade800,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.pinkAccent,
          ),
        ),
      ],
    );
  }