import 'package:flutter/material.dart';

class AnimatedCircle extends AnimatedWidget {
  final double fromSize;
  final double toSize;
  final Color color;
  final Animation<double> animation;

  AnimatedCircle({
    required this.fromSize,
    required this.toSize,
    required this.color,
    required Animation<double> controller,
  })  : animation = Tween<double>(
          begin: fromSize,
          end: toSize,
        ).animate(controller),
        super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    final size = animation.value;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
