import 'dart:math';

import 'package:flutter/material.dart';

class MyPieChart extends CustomPainter {
  final List<double> values;
  final List<Color> colors;
  final List<Rect> labelRects;

  final BuildContext context;

  MyPieChart(this.values, this.colors, this.context)
      : labelRects = List.filled(values.length, Rect.zero);

  void calculateLabelPositions(Size chartSize) {
    double total = 0;
    for (var value in values) {
      total += value;
    }
    double startAngle = 0;

    for (int i = 0; i < values.length; i++) {
      double sweepAngle = values[i] / total * 2 * pi;
      double midAngle = startAngle + sweepAngle / 2;
      double labelX =
          chartSize.width / 2 + cos(midAngle) * chartSize.width / 2 * 0.8;
      double labelY =
          chartSize.height / 2 + sin(midAngle) * chartSize.height / 2 * 0.8;
      labelRects[i] = Rect.fromLTWH(labelX - 10, labelY - 10, 20, 20);
      startAngle += sweepAngle;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    calculateLabelPositions(size);
    double total = 0;
    for (var value in values) {
      total += value;
    }
    double startAngle = 0;

    for (int i = 0; i < values.length; i++) {
      double sweepAngle = values[i] / total * 2 * pi;
      Paint paint = Paint()..color = colors[i];
      canvas.drawArc(
          Rect.fromCircle(
              center: Offset(size.width / 2, size.height / 2),
              radius: size.width / 2),
          startAngle,
          sweepAngle,
          true,
          paint);

      // Menggambar bilangan persen di dalam pie chart
      TextSpan span = TextSpan(
        text: '${(values[i] / total * 100).round()}%',
        style: const TextStyle(fontSize: 10),
      );
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr);
      tp.layout();
      tp.paint(canvas, labelRects[i].topLeft);

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
