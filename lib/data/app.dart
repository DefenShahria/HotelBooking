import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jayga/data/color_plate.dart';

import '../home/homeScreen.dart';
import 'controllerBinder.dart';

class Jayga extends StatefulWidget {
  const Jayga({super.key});

  @override
  State<Jayga> createState() => _JaygaState();
}

class _JaygaState extends State<Jayga> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      initialBinding: ControllerBinder(),
    );
  }
}
