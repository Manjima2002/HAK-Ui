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
            index: index + 1,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 140,
        height: 170,
        child: Stack(
          children: [
            Image.asset('asset/images/saree-removebg-preview.png'),
            Positioned(
              left: 80,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 73, 239, 31),
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Text(
                '$index % off',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
