import 'package:flutter/material.dart';

import '../home/homeScreen.dart';

class Jayga extends StatefulWidget {
  const Jayga({super.key});

  @override
  State<Jayga> createState() => _JaygaState();
}

class _JaygaState extends State<Jayga> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
