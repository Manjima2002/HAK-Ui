import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: height * 0.6,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: height * 0.6,
                    child: InstaImageViewer(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('asset/saree/${index + 1}.jpeg'),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
