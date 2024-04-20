import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/dupetta.dart';
import 'package:flutter_application_1/features/homescreen/saree.dart';
import 'package:flutter_application_1/features/homescreen/widgets/dailywears.dart';
import 'package:flutter_application_1/features/homescreen/widgets/frock.dart';
import 'package:flutter_application_1/features/homescreen/widgets/kurta.dart';
import 'package:flutter_application_1/features/homescreen/widgets/lehanga.dart';
import 'package:flutter_application_1/features/homescreen/wishlist.dart';
import 'package:flutter_application_1/material.dart';
import 'package:flutter_application_1/tops.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/saree-removebg-preview.png',
                        label: 'Saree'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Saree()),
                      );
                    }),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/tops-removebg-preview.png',
                        label: 'Tops'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Tops()),
                      );
                    }),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/material.jpg',
                        label: 'Material'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MaterialS()),
                      );
                    }),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/dupatta-removebg-preview.png',
                        label: 'Dupetta'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dupetta()),
                      );
                    }),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/daily-removebg-preview.png',
                        label: 'Dailywears'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dailywear()),
                      );
                    }),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/kurta-removebg-preview.png',
                        label: 'Kurta'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kurta()),
                      );
                    }),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/frock-removebg-preview.png',
                        label: 'Frock'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Frock()),
                      );
                    }),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    child: CategoryIcons(
                        imagePath: 'asset/images/lehanga-removebg-preview.png',
                        label: 'Lahenga'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lahenga()),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcons extends StatelessWidget {
  final String imagePath;
  final String label;
  const CategoryIcons(
      {super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        Text(label),
      ],
    );
  }
}
