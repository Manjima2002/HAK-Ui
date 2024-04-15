import 'package:flutter/material.dart';

class Bestcellingtext extends StatelessWidget {
  const Bestcellingtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
      child: Text(
        "Bestcelling Product",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
  
    );
  }
}
