import 'package:flutter/material.dart';

class InnerShadowPainter extends CustomPainter {
  final Offset? offset;
  final double blurRadius;
  final double spreadRadius;
  final Color color;

  InnerShadowPainter({
    required this.color,
    this.offset,
    this.blurRadius = 0,
    this.spreadRadius = 0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = color;
    if (blurRadius != 0) {
      paint.maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius);
    }
    paint.blendMode = BlendMode.src;

    final path = Path();
    if (offset != null) {
      path.lineTo(0, size.height);
      path.lineTo(offset?.dx ?? 0, size.height);
      path.lineTo(offset?.dx ?? 0, offset?.dy ?? 0);
      path.lineTo(size.width, offset?.dy ?? 0);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
