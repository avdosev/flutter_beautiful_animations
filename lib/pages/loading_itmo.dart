import 'package:flutter/material.dart';
import 'package:flutter_beautiful_animations/utils/widgets/micro_scaffold.dart';
import 'package:flutter_beautiful_animations/utils/widgets/pulse_point.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItmoLoading extends HookWidget {
  const ItmoLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    useEffect(() {
      controller.repeat(reverse: true);
    }, [controller]);

    final animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut,
    );

    return MicroScaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCircle(
              fromSize: 30,
              toSize: 50,
              color: const Color(0xffef205a),
              controller: animation,
            ),
            AnimatedCircle(
              fromSize: 25,
              toSize: 0,
              color: Colors.white,
              controller: animation,
            ),
          ],
        ),
      ),
    );
  }
}
