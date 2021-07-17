import 'dart:math';

import 'package:flutter/material.dart';

class ProjectProgressIndicator extends CustomPainter {
  Color? completedColor;

  Color uncompletedColor = Colors.grey.shade400;
  double? circlewidth;
  double? completedpercentage;

  ProjectProgressIndicator({
    this.circlewidth,
    this.completedColor,
    this.completedpercentage,
  });
  defaultPainter({Color? color}) {
    return Paint()
      ..color = color!
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = circlewidth! / 8;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint competedPainer = defaultPainter(color: completedColor);

    Paint uncompetedPainer = defaultPainter(color: uncompletedColor);

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, uncompetedPainer);
    double arcangle = 2 * pi * (completedpercentage! / 100);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcangle, false, competedPainer);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
