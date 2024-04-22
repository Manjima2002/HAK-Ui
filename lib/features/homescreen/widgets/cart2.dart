import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/homescreen/home_page.dart';

class Carts extends StatefulWidget {
  const Carts({super.key});

  @override
  State<Carts> createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Carttile(
            height: 120,
            width: 150,
            imagepath: "asset/images/saree-removebg-preview.png",
            itemname: "saree",
            itemprize: 300,
          ),
          Carttile(
            height: 120,
            width: 150,
            imagepath: "asset/images/sree3-removebg-preview.png",
            itemname: "kurta",
            itemprize: 200,
          ),
          SizedBox(
            height: 380,
          ),
          ElevatedButton(
            child: Text(
              'Continue',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class Carttile extends StatefulWidget {
  final double height;
  final double width;
  final String imagepath;
  final String itemname;
  final int itemprize;
  final IconData itemicon;

  Carttile({
    super.key,
    required this.height,
    required this.width,
    required this.imagepath,
    required this.itemname,
    required this.itemprize,
    this.itemicon = Icons.arrow_forward,
  });

  @override
  State<Carttile> createState() => _CarttileState();
}

class _CarttileState extends State<Carttile> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: widget.height,
              width: widget.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(widget.imagepath, height: 120),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.itemname,
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        widget.itemprize.toString(),
                        style: const TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "Size:L",
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "Remove",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            if (count > 0) {
                              count--;
                              setState(() {});
                            }
                          },
                          icon: Icon(Icons.remove_circle)),
                      Text(
                        count.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {
                            count++;
                            setState(() {});
                          },
                          icon: Icon(Icons.add_circle)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
