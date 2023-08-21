import 'package:flutter/material.dart';
import 'dart:math';
import 'custom_shapes.dart';

class RandomizedScreen extends StatefulWidget {
  const RandomizedScreen({Key? key}) : super(key: key);

  @override
  State<RandomizedScreen> createState() => _RandomizedScreenState();
}

class _RandomizedScreenState extends State<RandomizedScreen> {
  Color generateRandomColor() {
    Random random = Random();
    int r = random.nextInt(256);
    int g = random.nextInt(256);
    int b = random.nextInt(256);
    return Color.fromARGB(255, r, g, b);
  }

  Color getOppositeColor(Color color) {
    int r = 255 - color.red;
    int g = 255 - color.green;
    int b = 255 - color.blue;
    return Color.fromARGB(255, r, g, b);
  }

  @override
  Widget build(BuildContext context) {
    Color color = generateRandomColor();
    Color opssiteColor = getOppositeColor(color);
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => setState(() {}),
          child: Stack(children: [
            Container(color: color),
            CustomPaint(
              painter: CustomShapesPainter(color: opssiteColor),
              size: Size.infinite,
            ),
            Align(
              alignment: Alignment.center,
              child: Card(
                color: Colors.black26,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hay there",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
