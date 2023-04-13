import 'package:flutter/material.dart';
import 'dart:math' as math;

class WaveWidget extends StatefulWidget {
  final double height;
  final double speed;
  final Color color;

  WaveWidget({
    Key? key,
    required this.height,
    required this.speed,
    required this.color,
  }) : super(key: key);

  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<WaveWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (widget.speed * 1000).toInt()),
    )..repeat(reverse: true);

    _animation = Tween(begin: 0.0, end: 2 * math.pi).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          size: Size(MediaQuery.of(context).size.width, widget.height),
          painter: _WavePainter(_animation.value, widget.color),
        );
      },
    );
  }
}

class _WavePainter extends CustomPainter {
  final double _animationValue;
  final Color _color;

  _WavePainter(this._animationValue, this._color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = _color;

    Path path = Path()
      ..moveTo(0, size.height / 2);

    for (double x = 0; x <= size.width; x++) {
      double y = math.sin(x / size.width * 4 * math.pi + _animationValue) * size.height / 4 + size.height / 2;
      path.lineTo(x, y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_WavePainter oldDelegate) {
    return _animationValue != oldDelegate._animationValue || _color != oldDelegate._color;
  }
}


