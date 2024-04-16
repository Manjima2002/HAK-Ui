import 'package:flutter/material.dart';

class ArrivalITems extends StatelessWidget {
  const ArrivalITems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return ScrollItem(
            index: index,
          );
        },
      ),
    );
  }
}

class ScrollItem extends StatelessWidget {
  final int index;
  const ScrollItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'asset/images/daily-removebg-preview.png',
      'asset/images/saree-removebg-preview.png',
      'asset/images/dupatta-removebg-preview.png',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 140,
        height: 170,
        child: Stack(
          children: [
            Image.asset(
              imageList[index],
              fit: BoxFit.contain,
            ),
            Positioned(
              left: 80,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 227, 7, 7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
