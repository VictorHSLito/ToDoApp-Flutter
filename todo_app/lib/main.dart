import 'package:flutter/material.dart';
import 'package:my_app/views/screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: "TODO List App",
      home: HomePage(),
    ),
  );
}
