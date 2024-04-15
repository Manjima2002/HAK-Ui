import 'package:flutter/material.dart';

class Bestcelling extends StatefulWidget {
  const Bestcelling({super.key});

  @override
  State<Bestcelling> createState() => _BestcellingState();
}

class _BestcellingState extends State<Bestcelling> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('asset/images/dupatta-removebg-preview.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
