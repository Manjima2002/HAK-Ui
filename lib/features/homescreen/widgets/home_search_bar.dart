


import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/palette.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
        color: Palette.textfieldBg,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          suffixIcon: Icon(Icons.camera),
          border: InputBorder.none,
          hintText: "Serch by keyword product ID",
        ),
      ),
    );
  }
}
