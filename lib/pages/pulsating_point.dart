import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_beautiful_animations/utils/widgets/micro_scaffold.dart';
import 'package:flutter_beautiful_animations/utils/widgets/pulse_point.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sensors_plus/sensors_plus.dart';

class PulsatingPoint extends HookWidget {
  const PulsatingPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    useEffect(() {
      controller.repeat(reverse: true);
    }, [controller]);

    return MicroScaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: AnimatedCircle(
            fromSize: 50,
            toSize: 100,
            color: Colors.blue,
            controller:
                CurvedAnimation(parent: controller, curve: Curves.easeInOut),
          ),
        ),
      ),
    );
  }
}
