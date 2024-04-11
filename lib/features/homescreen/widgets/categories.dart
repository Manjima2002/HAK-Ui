import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryIcons(
                    imagePath: 'asset/images/saree-removebg-preview.png',
                    label: 'Saree'),
                SizedBox(
                  width: 35,
                ),
                CategoryIcons(
                    imagePath: 'asset/images/tops-removebg-preview.png',
                    label: 'Topsp'),
                SizedBox(
                  width: 35,
                ),
                CategoryIcons(
                    imagePath: 'asset/images/material.jpg', label: 'Material'),
                SizedBox(
                  width: 35,
                ),
                CategoryIcons(
                    imagePath: 'asset/images/dupatta-removebg-preview.png',
                    label: 'Tshirt'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryIcons(
                    imagePath: 'asset/images/daily-removebg-preview.png',
                    label: 'Dailwear'),
                SizedBox(
                  width: 35,
                ),
                CategoryIcons(
                    imagePath: 'asset/images/kurta-removebg-preview.png',
                    label: 'Kurta'),
                SizedBox(
                  width: 35,
                ),
                CategoryIcons(
                    imagePath: 'asset/images/frock-removebg-preview.png',
                    label: 'Frock'),
                SizedBox(
                  width: 35,
                ),
                CategoryIcons(
                    imagePath: 'asset/images/lehanga-removebg-preview.png',
                    label: 'Lahenga'),
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
