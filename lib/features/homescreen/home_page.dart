import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/homescreen/widgets/appbar.dart';
import 'package:flutter_application_1/features/homescreen/widgets/arrival_items.dart';
import 'package:flutter_application_1/features/homescreen/widgets/categories.dart';
import 'package:flutter_application_1/features/homescreen/widgets/categories_text.dart';
import 'package:flutter_application_1/features/homescreen/widgets/home_carosel.dart';
import 'package:flutter_application_1/features/homescreen/widgets/home_search_bar.dart';
import 'package:flutter_application_1/features/homescreen/widgets/new_arrival_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: ListView(
        children: const [
          HomeSearchBar(),
          CategoriesText(),
          Categories(),
          HomeCarousel(),
          NewArrivelText(),
          ArrivalITems(),
        ],
      ),
    );
  }
}
