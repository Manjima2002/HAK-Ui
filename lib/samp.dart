import 'package:flutter/material.dart';

class Samp extends StatefulWidget {
  const Samp({super.key});

  @override
  State<Samp> createState() => _sample();
}

class _sample extends State<Samp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 48.0,
              height: 48.0,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 48.0,
              height: 48.0,
            ),
          ],
        ),
      ),
    );
  }
}
