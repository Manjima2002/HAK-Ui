import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/detail_page.dart/combo1_detail.dart';
import 'package:flutter_application_1/features/detail_page.dart/combo2_detail.dart';
import 'package:flutter_application_1/features/homescreen/saree.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CarouselSlider(
        items: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Combodetailpage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  image: AssetImage("asset/images/womens-lifestyle.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Combo_two_detailpage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  image: AssetImage("asset/images/combo1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: const DecorationImage(
                image: AssetImage("asset/images/combo.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
