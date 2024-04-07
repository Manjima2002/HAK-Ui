import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _sample();
}

class _sample extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'name',
            ),
          ),
          ],
        ),
      ),
    );
  }
  
}