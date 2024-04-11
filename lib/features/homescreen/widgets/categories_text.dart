



import 'package:flutter/material.dart';

class CategoriesText extends StatelessWidget {
  const CategoriesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const   Padding(
         padding:  EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
         child: Align(
           alignment: Alignment.centerLeft,
           child: Text(
             "Categories",
             style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
                 color: Colors.black),
           ),
         ),
       );
  }
}
