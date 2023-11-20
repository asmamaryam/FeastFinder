import 'package:flutter/material.dart';

class Catogory {
  final String id;
  final String title;
  final Color color;
  final String iconAssestPath;

  const Catogory({
    required this.id,
    required this.title,
    this.color = Colors.brown,
    required this.iconAssestPath,
  });
}
