import 'dart:math';

import 'package:flutter/material.dart';

class LoadingIndicator extends StatefulWidget {
  final double width, height;
  const LoadingIndicator({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    controller.forward();
    controller.addListener(() {
      setState(() {
        if (controller.status == AnimationStatus.completed) {
          controller.repeat();
        }
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.width,
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: Container(
            height: widget.height * 0.3,
            width: widget.width * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/2907/2907253.png'),
              ),
            ),
          ),
          builder: (ctx, wid) => Transform.rotate(
            angle: controller.value * 2 * pi,
            child: wid,
          ),
        ),
      ),
    );
  }
}
