import 'package:flutter/material.dart';
import 'dart:math';

class CustomShapesPainter extends CustomPainter {
  CustomShapesPainter({required this.color});
  static const _numberOfShapes = 100;
  static const _minSize = 5.0;
  static const _maxSize = 30.0;
  Color color;
  final _shapes = List.generate(_numberOfShapes, (index) {
    final size = _minSize + Random().nextDouble() * (_maxSize - _minSize);
    final x = Random().nextDouble() * 2 - 1;
    final y = Random().nextDouble() * 2 - 1;
    final offset = Offset(x, y);
    return _Shape(size, offset);
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    for (final shape in _shapes) {
      final position = shape.offset.scale(size.width, size.height);
      canvas.drawCircle(position, shape.size / 2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomShapesPainter oldDelegate) => false;
}

class _Shape {
  final double size;
  final Offset offset;

  _Shape(this.size, this.offset);
}
