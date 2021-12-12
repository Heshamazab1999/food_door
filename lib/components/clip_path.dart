import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class Shapes extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height , size.width, size.height - 50);
    path.lineTo(size.width, 0);

    paint.color = K.mainColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
